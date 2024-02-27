import {param} from 'express-validator'

export const ValidatorParamName = [
    param('name', 'Введите имя покемона.').notEmpty().isString().isLength({
        min:3,
        max:33
    }).withMessage('Допустимое кол-во символов от 3 до 33'),

]