import {Response, Request, NextFunction} from 'express';
import Token from '../classes/token';

export const tokenVerify = (req: any, res: Response, next: NextFunction) => {
    const token = req.get('x-token') || '';
    Token.validateToken(token)
        .then( (decoded: any) => {
            req.user = decoded.user;
            next();
        }).catch( err => {
            res.json({
                ok: false,
                message: 'Invalid token'
            });
        });
}