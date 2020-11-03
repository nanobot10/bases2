import {Router, Response} from 'express'
import bcrypt from 'bcrypt';
import Token from '../classes/token';
const oracledb = require('oracledb');
oracledb.autoCommit = true;

const userRoutes = Router();

userRoutes.post('/signup', async(req: any, res: Response) => {
    const body = req.body;
    let connection;
    try {
        connection = await oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });
        
        let result = await connection.execute('select * from users where username = :username', [body.username]);
        
        if(result.rows.length > 0) {
            return handleResponse(false,'El usuario ya existe', null , res);
        }
        
        result = await connection.execute(
            'insert into users values(users_id.nextval, :name, :username, :password)',
            [body.name,body.username,bcrypt.hashSync(body.password,10)]);
        
        
        
        return handleResponse(true, 'Usuario creado con éxito', result , res);
        

    } catch (error) {
        console.log(error);
    } finally {
        if(connection) {
            await connection.close();
        }
    }
});

userRoutes.post('/signin', async(req: any, res: Response) => {
    const body = req.body;
    let connection;
    try {
        connection = await oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });
        
        let result = await connection.execute('select * from users where username = :username', [body.username]);
        
        if(result.rows.length === 0) {
            return handleResponse(false,'El usuario no existe', null , res);
        }
        
        const user = result.rows[0];

        if(!bcrypt.compareSync(body.password, user[3])) {
            return handleResponse(false, 'Datos de inicio de sesión incorrectos', null, res);
        }
        
        const token = Token.getJwtToken({
            id: user[0],
            name: user[1],
            username: user[2]
        });

        
        return handleResponse(true, 'Usuario creado con éxito', {token} , res);
        

    } catch (error) {
        console.log(error);
    } finally {
        if(connection) {
            await connection.close();
        }
    }
});

const handleResponse = (success: boolean, message: string, data: any, res: Response) => {
    return res.json({
        success,
        message,
        data
    });
};

export default userRoutes;