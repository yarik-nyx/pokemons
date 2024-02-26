import {body} from 'express-validator'

export const ValidatorSignIn = [
    body('nickname', 'Введите никнейм.').notEmpty().isString().isLength({
        min:5,
        max:20
    }).withMessage('Допустимое кол-во символов от 5 до 25'),
    body('password', 'Введите пароль').notEmpty().isString().isLength({
        min:7,
        max:50
    }).withMessage('Допустимое кол-во символов от 7 до 50'),
]