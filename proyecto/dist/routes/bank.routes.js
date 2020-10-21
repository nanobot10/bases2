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
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const oracledb = require('oracledb');
const bankRoutes = express_1.Router();
bankRoutes.get('/', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const connection = yield oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });
        console.log('Connected to database');
        const result = yield connection.execute('select * from banco');
        yield connection.close();
        return res.json({
            success: true,
            data: result
        });
    }
    catch (err) {
        console.log(err);
        return res.json({
            success: false,
            message: err.message
        });
    }
}));
bankRoutes.get('/anual-ranking', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const connection = yield oracledb.getConnection({
            user: 'proyecto',
            password: 'proyecto',
            connectString: 'localhost:1521/orcl'
        });
        console.log('Connected to database');
        const result = yield connection.execute('select * from anual_ranking');
        yield connection.close();
        return res.json({
            success: true,
            data: result
        });
    }
    catch (err) {
        console.log(err);
        return res.json({
            success: false,
            message: err.message
        });
    }
}));
exports.default = bankRoutes;
