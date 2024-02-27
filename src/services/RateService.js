import {rateRepo} from '../repos/RateRepo.js'
import {pokemonRepo} from '../repos/PokemonRepo.js'
import {ApiError} from '../exceptions/ApiError.js'
import { DATEONLY } from 'sequelize'

class RateService{

    async setRate(pokemon_name, userId, rate){
        const {pokemon_id} = await pokemonRepo.getIdByName(pokemon_name)

        if(!pokemon_id){
            throw ApiError.BadRequest("Такого покемона не существует")
        }

        const curRate = await rateRepo.findRate(pokemon_id, userId)

        if(curRate){
            curRate.stars = rate
            await curRate.save()
            
            return curRate
        }
        return await rateRepo.setRate(pokemon_id, userId, rate)
    }

    async topDay(){
        const today = new Date();
        const startOfDay = new Date(today.getFullYear(), today.getMonth(), today.getDate());
        const endOfDay = new Date(today.getFullYear(), today.getMonth(), today.getDate() + 1);
        
        return await rateRepo.topDay(startOfDay, endOfDay)
    }
}

export const rateService = new RateService()