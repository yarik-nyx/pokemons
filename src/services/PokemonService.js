import {pokemonRepo} from '../repos/PokemonRepo.js'

class PokemonService{
    async getAllPokemons(){
        return await pokemonRepo.getAllPokemons()
    }

    async getAllTypes(){
        return await pokemonRepo.getAllTypes()
    }

    async getParametersByName(name){
        return await pokemonRepo.getParametersByName(name)
    }

    async getStatsByName(name){
        return await pokemonRepo.getStatsByName(name)
    }

    async getImgByName(name){
        return await pokemonRepo.getImgByName(name)
    }

    async getEvolutionByName(name){
        return await pokemonRepo.getEvolutionByName(name)
    }
}

export const pokemonService = new PokemonService()