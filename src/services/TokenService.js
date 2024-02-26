import dotenv from 'dotenv'
dotenv.config()
import {tokenRepo} from '../repos/TokenRepo.js'
import jwt from 'jsonwebtoken'

class TokenService{
    constructor(tokenRepo, jwt){
        this.tokenRepo = tokenRepo
        this.jwt = jwt
        this.env = process.env
    }

    createTokens(payload){
        const accessToken = jwt.sign(payload, this.env.JWT_ACCESS_TOKEN, {expiresIn:'15m'})
        const refreshToken = jwt.sign(payload, this.env.JWT_REFRESH_TOKEN, {expiresIn:'30d'})
        return {
            accessToken,
            refreshToken
        }
    }

    validateAccessToken(token){
        try {
            return jwt.verify(token, this.env.JWT_ACCESS_TOKEN)
        } catch (error) {
            return null
        }
    }

    validateRefreshToken(token){
        try {
            return jwt.verify(token, this.env.JWT_REFRESH_TOKEN)
        } catch (error) {
            return null
        }
    }
}

export const tokenService = new TokenService(tokenRepo, jwt)