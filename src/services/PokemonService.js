import {pokemonRepo} from '../repos/PokemonRepo.js'

class PokemonService{
    async getAll(){
        return await pokemonRepo.getAll()
    }
}

export const pokemonService = new PokemonService()