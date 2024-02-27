import { Router } from "express";
import { authMid } from '../middlewares/authMid.js'
import {ValidatorRate} from '../validators/rate.js'
import { validErrorsMid } from '../utils/checkErrors.js'
import {rateController} from '../controllers/RateController.js'

export const rateRouter = new Router()

rateRouter.post('/', authMid, ValidatorRate, validErrorsMid, rateController.setRate)

rateRouter.get('/day', authMid, rateController.topDay)

rateRouter.get('/week', authMid)

rateRouter.get('/month', authMid)