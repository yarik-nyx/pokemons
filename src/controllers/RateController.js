import {rateService} from '../services/RateService.js'

class RateController{
    async setRate(req, res, next){
        try {
            const{name, rate} = req.body
            const{userId} = req.user
            const settedRate = await rateService.setRate(name, userId, rate)
            return res.status(201).json(settedRate)
        } catch (error) {
            next(error)
        }

    }

    async topDay(req, res, next){
        try {
            const data = await rateService.topDay()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const rateController = new RateController()