import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class TokenRepo{
    constructor(initModels, db){
        this.initModels = initModels(db)
    }

    async findTokenByUserId(userId){
        return await this.initModels.tokens.findOne({where : {user_id:userId}})
    }

    async saveTokenByUserId(userId, refreshToken){
        return await this.initModels.tokens.create({user_id:userId, refresh_token:refreshToken})
    }

    async findTokenByRefreshToken(refreshToken){

        return await this.initModels.tokens.findOne({where : {refresh_token:refreshToken}})
    }


}

export const tokenRepo = new TokenRepo(initModels, db)