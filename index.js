import dotenv from 'dotenv'
dotenv.config()
import express from 'express'
import cookieParser from 'cookie-parser'
import {authRouter} from './src/routes/auth.js'
import {apiRouter} from './src/routes/api.js'
import {rateRouter} from './src/routes/rate.js'
import {errorMid} from './src/middlewares/errorMid.js'

const app = express()
const PORT = process.env.PORT || 3000

app.use(express.json())
app.use(cookieParser())
app.use('/auth', authRouter)
app.use('/api', apiRouter)
app.use('/rate', rateRouter)
app.use(errorMid)

app.listen(PORT, (err) => {
    if(err){
        console.log(err);
        return
    }
    console.log(`Server has started on port: ${PORT}`);
})



