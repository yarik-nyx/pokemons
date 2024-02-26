import { userService } from '../services/UserService.js'

class UserController{
    async registration(req, res, next){
        try {
            const{nickname, password, reEnteredPassword} = req.body
            const userData = await userService.registartion(nickname, password, reEnteredPassword)
            
            res.cookie('refreshToken', userData.refreshToken, {maxAge:30*24*60*60*1000, httpOnly: true, secure: true})
            return res.status(201).json({
                "status":201,
                userData
            })
        } catch (error) {
            next(error)
        }
    }

    async login(req, res, next){
        try {
            const{nickname, password} = req.body
            const userData = await userService.login(nickname, password)

            res.cookie('refreshToken', userData.refreshToken, {maxAge:30*24*60*60*1000, httpOnly: true, secure: true})
            return res.status(200).json({
                "status":200,
                userData
            })
        } catch (error) {
            next(error)
        }
    }

    async logout(req, res, next){
        try {
            const{refreshToken} = req.cookies
            await userService.logout(refreshToken)
            res.clearCookie('refreshToken')
            return res.status(200).json({
                "status":200
            })
        } catch (error) {
            next(error)
        }
    }

    async refresh(req, res, next){
        try {
            const{refreshToken} = req.cookies
            const userData = await userService.refresh(refreshToken)

            res.cookie('refreshToken', userData.refreshToken, {maxAge:30*24*60*60*1000, httpOnly: true, secure: true})
            return res.status(200).json({
                "status":200,
                userData
            })
        } catch (error) {
            next(error)
        }
    }
}

export const userController = new UserController()