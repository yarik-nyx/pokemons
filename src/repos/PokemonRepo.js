import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class PokemonRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllPokemons(){
        return await this.models.pokemons.findAll({
            attributes:['pokemon_id', 'pokemon_name'],
            order:[
                ['pokemon_id', 'asc']
            ]
        })
    }

    async getAllTypes(){
        return await this.models.type.findAll({
            attributes:['type_id', 'type_name'],
            order:[
                ['type_id', 'asc']
            ]
        })
    }

    async getParametersByName(name){
        return await this.models.pokemons.findOne({
            where: {pokemon_name:name},
            attributes:['pokemon_id', 'pokemon_name', 'pokemon_height','pokemon_weight'],
            include:{
                model: this.models.categories,
                as: 'category',
                attributes:['category_name']
            }
        })
    }

    async getStatsByName(name){
        return await this.models.pokemons.findOne({
            where: {pokemon_name:name},
            attributes:['pokemon_id', 'pokemon_name'],
            include:{
                model: this.models.stats,
                as: 'stat',
                attributes:['stat_hp', 'stat_attack', 'stat_defense', 'stat_sp_attack', 'stat_sp_defense', 'stat_speed']
            }
        })
    }

    async getImgByName(name){
        return await this.models.pokemons.findOne({
            where: {pokemon_name:name},
            attributes:['pokemon_logo'],
        })
    }

    async getEvolutionByName(name){
        return await this.models.pokemons.findOne({
            where: {pokemon_name:name}, 
            attributes:['pokemon_name'],
            include:{
                model: this.models.evolutions,
                as: 'evolution',
                attributes:['stage']
            }
        })
    }
}

export const pokemonRepo = new PokemonRepo(initModels, db)