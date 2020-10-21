import { json } from "body-parser";
import { Router, Response, Request } from "express";
const oracledb = require('oracledb');

const bankRoutes = Router();

bankRoutes.get('/', async (req: any, res: Response) => {

    try {

        const connection = await oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });

        console.log('Connected to database');

        const result = await connection.execute('select * from banco');
        
        await connection.close();
        
        return res.json({
            success: true,
            data: result
        });


    } catch(err) {
        console.log(err);
        return res.json({
            success: false,
            message: err.message
        });
    }

});


bankRoutes.get('/anual-ranking', async (req: any, res: Response) => {

    try {

        const connection = await oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });

        console.log('Connected to database');

        const result = await connection.execute('select * from anual_ranking');
        
        await connection.close();
        
        return res.json({
            success: true,
            data: result
        });


    } catch(err) {
        console.log(err);
        return res.json({
            success: false,
            message: err.message
        });
    }

});








export default bankRoutes;