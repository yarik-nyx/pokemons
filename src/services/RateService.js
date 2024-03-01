import {rateRepo} from '../repos/RateRepo.js'
import {pokemonRepo} from '../repos/PokemonRepo.js'
import {ApiError} from '../exceptions/ApiError.js'
import moment from 'moment'

class RateService{

    async setRate(pokemon_name, userId, rate){
        const {pokemon_id} = await pokemonRepo.getIdByName(pokemon_name)

        if(!pokemon_id){
            throw ApiError.BadRequest("Такого покемона не существует")
        }

        const curRate = await rateRepo.findRate(pokemon_id, userId)

        if(curRate){
            curRate.stars = rate
            const today = new Date()
            curRate.updatedAt = today
            await curRate.save()
            
            return curRate
        }
        return await rateRepo.setRate(pokemon_id, userId, rate)
    }

    async topDay(){
        let startOfDay = moment().startOf('day')
        let endOfDay= moment().endOf('dat')
        console.log(startOfDay);
        console.log(endOfDay);
        return await rateRepo.topPokemon(startOfDay, endOfDay)
    }

    async topWeek(){
        let startOfWeek = moment().startOf('week')
        let endOfWeek = moment().endOf('week')

        return await rateRepo.topPokemon(startOfWeek, endOfWeek)
    }

    async topMonth(){
        let startOfMonth = moment().startOf('month')
        let endOfMonth = moment().endOf('month')
        return await rateRepo.topPokemon(startOfMonth, endOfMonth)
    }
}

export const rateService = new RateService()