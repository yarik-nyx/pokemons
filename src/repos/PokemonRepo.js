import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class PokemonRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAll(){
        return await this.models.pokemons.findAll()
    }
}

export const pokemonRepo = new PokemonRepo(initModels, db)