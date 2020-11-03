import bodyParser from 'body-parser'
import Server from './classes/server';
import bankRoutes from './routes/bank.routes'
import cors from 'cors';
import userRoutes from './routes/user.routes';

const server = new Server();


server.app.use(cors());

// Body parser
server.app.use( bodyParser.urlencoded({extended: true}) );
server.app.use( bodyParser.json() );

//rutas
server.app.use('/banks', bankRoutes);
server.app.use('/users', userRoutes);

server.start(() => {
    console.log(`Servidor corriendo en puerto ${server.port}`);
});

