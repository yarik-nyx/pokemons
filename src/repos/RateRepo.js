import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'
import {Op} from 'sequelize'
import Sequelize from 'sequelize'

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

    async topPokemon(startOfDay, endOfDay){
        return await this.models.rating.findAll({
            where: {
                updatedAt: {
                    [Op.between]: [startOfDay, endOfDay]
                  },
            },
            include:{
                model: this.models.pokemons,
                as: 'pokemon',
                attributes: ['pokemon_name']
            },
            group:[
                ['rating.pokemon_id'],
                ['pokemon.pokemon_id'],
                ['pokemon.pokemon_name'],
                
            ],
            attributes: [
            [Sequelize.fn('SUM', Sequelize.col('stars')), 'sum'],
            [Sequelize.fn('COUNT', Sequelize.col('user_id')), 'count'],
            [
                Sequelize.literal('SUM(stars)/COUNT(user_id)'),
                'average'
            ],
            ],
            order:[
                [Sequelize.literal('COUNT'), 'DESC'],
                [Sequelize.literal('SUM'), 'DESC'],
            ],
            limit:1
        })
    }
}

export const rateRepo = new RateRepo(initModels, db)