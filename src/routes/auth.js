import { Router } from "express";
import { userController } from '../controllers/UserController.js'
import { ValidatorSignUp } from '../validators/signUp.js'
import { ValidatorSignIn } from '../validators/signIn.js'
import { validErrorsMid } from '../utils/checkErrors.js'

export const authRouter = new Router()

authRouter.post('/signup', ValidatorSignUp, validErrorsMid, userController.registration)

authRouter.post('/signin', ValidatorSignIn, validErrorsMid, userController.login)

authRouter.post('/logout', ValidatorSignIn, validErrorsMid, userController.logout)

authRouter.get('/refresh', userController.refresh)