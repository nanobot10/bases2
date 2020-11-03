"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const body_parser_1 = __importDefault(require("body-parser"));
const server_1 = __importDefault(require("./classes/server"));
const bank_routes_1 = __importDefault(require("./routes/bank.routes"));
const cors_1 = __importDefault(require("cors"));
const user_routes_1 = __importDefault(require("./routes/user.routes"));
const server = new server_1.default();
server.app.use(cors_1.default());
// Body parser
server.app.use(body_parser_1.default.urlencoded({ extended: true }));
server.app.use(body_parser_1.default.json());
//rutas
server.app.use('/banks', bank_routes_1.default);
server.app.use('/users', user_routes_1.default);
server.start(() => {
    console.log(`Servidor corriendo en puerto ${server.port}`);
});
