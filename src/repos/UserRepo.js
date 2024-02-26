import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class UserRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async findUserByNick(nickname){
        return await this.models.users.findOne({where : {nickname}})
    }

    async findUserById(id){
        return await this.models.users.findOne({where : {user_id:id}})
    }

    async registration(nickname, password) {
        return await this.models.users.create({nickname, password})
    }
}

export const userRepo = new UserRepo(initModels, db)