import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'
import {Op} from 'sequelize'

class RateRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async findRate(pokId, userId){
        return await this.models.rating.findOne({
            where:{pokemon_id:pokId, user_id:userId}
        })
    }

    async setRate(pokId, userId, rate){
        
        return await this.models.rating.create({
            pokemon_id:pokId, user_id:userId, stars:rate
        })
    }

    async topDay(startOfDay, endOfDay){
        return await this.models.rating.findAll({
            where: {
                updatedAt: {
                    [Op.between]: [startOfDay, endOfDay]
                  },
            },
            attributes: ['stars'],
            include:{
                model: this.models.pokemons,
                as: 'pokemon',
                attributes: ['pokemon_name']
            }
        })
    }
}

export const rateRepo = new RateRepo(initModels, db)