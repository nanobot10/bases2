"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const bcrypt_1 = __importDefault(require("bcrypt"));
const token_1 = __importDefault(require("../classes/token"));
const oracledb = require('oracledb');
oracledb.autoCommit = true;
const userRoutes = express_1.Router();
userRoutes.post('/signup', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const body = req.body;
    let connection;
    try {
        connection = yield oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });
        let result = yield connection.execute('select * from users where username = :username', [body.username]);
        if (result.rows.length > 0) {
            return handleResponse(false, 'El usuario ya existe', null, res);
        }
        result = yield connection.execute('insert into users values(users_id.nextval, :name, :username, :password)', [body.name, body.username, bcrypt_1.default.hashSync(body.password, 10)]);
        return handleResponse(true, 'Usuario creado con éxito', result, res);
    }
    catch (error) {
        console.log(error);
    }
    finally {
        if (connection) {
            yield connection.close();
        }
    }
}));
userRoutes.post('/signin', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const body = req.body;
    let connection;
    try {
        connection = yield oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });
        let result = yield connection.execute('select * from users where username = :username', [body.username]);
        if (result.rows.length === 0) {
            return handleResponse(false, 'El usuario no existe', null, res);
        }
        const user = result.rows[0];
        if (!bcrypt_1.default.compareSync(body.password, user[3])) {
            return handleResponse(false, 'Datos de inicio de sesión incorrectos', null, res);
        }
        const token = token_1.default.getJwtToken({
            id: user[0],
            name: user[1],
            username: user[2]
        });
        return handleResponse(true, 'Usuario creado con éxito', { token }, res);
    }
    catch (error) {
        console.log(error);
    }
    finally {
        if (connection) {
            yield connection.close();
        }
    }
}));
const handleResponse = (success, message, data, res) => {
    return res.json({
        success,
        message,
        data
    });
};
exports.default = userRoutes;
