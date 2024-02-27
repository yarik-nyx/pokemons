import {body, check} from 'express-validator'

export const ValidatorRate = [
    body('name', 'Введите имя покемона.').notEmpty().isString().isLength({
        min:3,
        max:33
    }).withMessage('Допустимое кол-во символов от 3 до 33'),
    check('rate', 'Рейтинг должен быть числом от 0 до 5').isFloat({ min: 0, max: 5 })
    
]