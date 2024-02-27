import {pokemonService} from '../services/PokemonService.js'
import path from 'path'

class PokemonController{

    async getAllPokemons(req, res, next){
        try {
            const pokemonsData = await pokemonService.getAllPokemons()
            return res.status(200).json(pokemonsData)
        } catch (error) {
            next(error)
        }

    }

    async getAllTypes(req, res, next){
        try {
            const typesData = await pokemonService.getAllTypes()
            return res.status(200).json(typesData)
        } catch (error) {
            next(error)
        }
    }

    async getParametersByName(req, res, next){
        try {
            const{name} = req.params
            const parametersData = await pokemonService.getParametersByName(name)
            if(!parametersData){
                return res.status(404).send()
            }
            return res.status(200).json(parametersData)
        } catch (error) {
            next(error)
        }
    }

    async getStatsByName(req, res, next){
        try {
            const{name} = req.params
            const statsData = await pokemonService.getStatsByName(name)
            if(!statsData){
                return res.status(404).send()
            }
            return res.status(200).json(statsData)
        } catch (error) {
            next(error)
        }
    }

    async getImgByName(req, res, next){
        try {
            const{name} = req.params
            const imgData = await pokemonService.getImgByName(name)
            if(!imgData){
                return res.status(404).send()
            }
            return res.status(200).sendFile(path.resolve() + '/imgs/' + imgData.pokemon_logo)
        } catch (error) {
            next(error)
        }
    }

    async getEvolutionByName(req, res, next){
        try {
            const{name} = req.params
            const evolData = await pokemonService.getEvolutionByName(name)
            if(!evolData){
                return res.status(404).send()
            }
            return res.status(200).json(evolData)
        } catch (error) {
            next(error)
        }
    }
}

export const pokemonController = new PokemonController()