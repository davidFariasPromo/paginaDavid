
import express, { Router } from 'express';
import db from './config/db.js';
import router from './routes/index.js';
import dotenv from 'dotenv';
dotenv.config({ path : 'variables.env'});


const app = express();

db.authenticate()
    .then(() => console.log('Base de datos autenticada'))
    .catch(error => console.log(error));

app.use( (req, res, next) =>{
    
    const year = new Date();
    res.locals.time = year.getFullYear();

  
    res.locals.nombrePagina = 'Piñatas Chidas';

    return next();
});
app.use(express.urlencoded({extended : true}))

app.set('view engine', 'pug');

app.use(express.static('build'));

app.use('/', router);


const port = process.env.PORT;
const host = process.env.HOST;


app.listen(port,host, ()=>{  
    
    console.log('El servidor esta funcionando en el puerto ' + port);
});