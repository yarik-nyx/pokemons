import { userRepo } from '../repos/UserRepo.js'
import bcrypt from 'bcrypt'
import { ApiError } from '../exceptions/ApiError.js'
import { UserDto } from '../dto/userDto.js'
import  {tokenService } from '../services/TokenService.js'
import { tokenRepo } from '../repos/TokenRepo.js'

class UserService{

    async registartion(nickname, password, reEnteredPassword){

        if(password !== reEnteredPassword){
            throw ApiError.BadRequest('Пароли не совпадают')
        }
        
        const salt = await bcrypt.genSalt(10)
        const hashedPass = await bcrypt.hash(password, salt)

        
        const foundUser = await userRepo.findUserByNick(nickname)
        if(foundUser){
            throw ApiError.BadRequest('Пользователь с таким ником уже существует')
        }

        const user = await userRepo.registration(nickname, hashedPass)
        const userDto = new UserDto(user.dataValues)


        const tokens = tokenService.createTokens({...userDto})
        const{accessToken, refreshToken} = tokens
        await tokenRepo.saveTokenByUserId(userDto.userId, refreshToken)

        return {
            ...userDto,
            ...tokens,
            
        }

    }

    async login(nickname, password){

        const foundUser = await userRepo.findUserByNick(nickname)

        if(!foundUser){
            throw ApiError.BadRequest('Неправильный логин или пароль')
        }

        const isPassEqual = await bcrypt.compare(password, foundUser.password)

        if(!isPassEqual){
            throw ApiError.BadRequest('Неправильный логин или пароль')
        }
        
        const userDto = new UserDto(foundUser)

        const tokens = await tokenService.createTokens({...userDto})
        const{accessToken, refreshToken} = tokens

        const userTokenRow = await tokenRepo.findTokenByUserId(userDto.userId)
        if(userTokenRow){
            userTokenRow.refresh_token = refreshToken
            await userTokenRow.save()
            return {
                ...userDto,
                ...tokens,     
            }
        }

        await tokenRepo.saveTokenByUserId(userDto.userId, refreshToken)

        return {
            ...userDto,
            ...tokens,
            
        }

    }

    async logout(refreshToken){
        if(!refreshToken){
            throw ApiError.UnathorizedError()
        }
        const tokenData = await tokenRepo.findTokenByRefreshToken(refreshToken)
        if(tokenData){
            await tokenData.destroy()
        }
        return
    }

    async refresh(refreshToken){

        if(!refreshToken){
            throw ApiError.UnathorizedError()
        }

        const userData = await tokenService.validateRefreshToken(refreshToken)

        const tokenFromDb = await tokenRepo.findTokenByRefreshToken(refreshToken)

        if(!userData || !tokenFromDb){
            throw ApiError.UnathorizedError()
        }

        const userDto = new UserDto(userData)
        const tokens = tokenService.createTokens({...userDto})

        tokenFromDb.refresh_token = tokens.refreshToken
        await tokenFromDb.save()

        return {
            ...userDto,
            ...tokens,
            
        }
    }
}

export const userService = new UserService()