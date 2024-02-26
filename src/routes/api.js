import { Router } from "express";
import { pokemonController } from '../controllers/PokemonController.js'
import { authMid } from '../middlewares/authMid.js'

export const apiRouter = new Router()

apiRouter.get('/pokemons', authMid, pokemonController.getAll)