import { Router } from "express";
import { pokemonController } from '../controllers/PokemonController.js'
import { authMid } from '../middlewares/authMid.js'
import {ValidatorParamName} from '../validators/paramName.js'
import { validErrorsMid } from '../utils/checkErrors.js'

export const apiRouter = new Router()

apiRouter.get('/pokemons', authMid, pokemonController.getAllPokemons)

apiRouter.get('/types', authMid, pokemonController.getAllTypes)

apiRouter.get('/parameters/:name', authMid, ValidatorParamName, validErrorsMid, pokemonController.getParametersByName)

apiRouter.get('/stats/:name', authMid, ValidatorParamName, validErrorsMid, pokemonController.getStatsByName)

apiRouter.get('/imgs/:name', authMid, ValidatorParamName, validErrorsMid, pokemonController.getImgByName)

apiRouter.get('/evolution/:name', authMid, ValidatorParamName, validErrorsMid, pokemonController.getEvolutionByName)