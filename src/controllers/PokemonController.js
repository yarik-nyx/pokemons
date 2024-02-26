import {pokemonService} from '../services/PokemonService.js'

class PokemonController{

    async getAll(req, res, next){
        try {
            const pokemonsData = await pokemonService.getAll()
            return res.status(200).json(pokemonsData)
        } catch (error) {
            next(error)
        }

    }
}

export const pokemonController = new PokemonController()