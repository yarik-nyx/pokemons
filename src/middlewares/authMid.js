import {ApiError} from '../exceptions/ApiError.js'
import {tokenService} from '../services/TokenService.js'

export function authMid(req, res, next){
    try {
        const authHeader = req.headers.authorization
        if(!authHeader){
            return next(ApiError.UnathorizedError())
        }

        const accessToken = authHeader.split(" ").slice(-1)[0]


        if(!accessToken){
            return next(ApiError.UnathorizedError())
        }

        const userData = tokenService.validateAccessToken(accessToken)

        if(!userData){
            return next(ApiError.UnathorizedError())
        }

        req.user = userData
        next()
    } catch (error) {
        next(error)
    }
}