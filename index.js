//importamos express
import express, { Router } from 'express';
import db from './config/db.js';
import router from './routes/index.js';

//instanciamps express
const app = express();
//Nos conectamos a la base de datos
db.authenticate()
    .then(() => console.log('Base de datos autenticada'))
    .catch(error => console.log(error));
//definimos el puerto
const port = process.env.PORT || 4000;

app.use( (req, res, next) =>{
    //mostrar el año actual
    const year = new Date();
    res.locals.time = year.getFullYear();

    //Añadir el nombre de la pagina
    res.locals.nombrePagina = 'Piñatas Chidas';

    return next();
});
app.use(express.urlencoded({extended : true}))
//habilitamos pug en nuestro archivo
app.set('view engine', 'pug');
//definimos la carpeta build 
app.use(express.static('build'));
//agregar routers
app.use('/', router);


app.listen(port, ()=>{  
    //damos un mensaje de que esta funcionando el puerto
    console.log('El servidor esta funcionando en el puerto' + port);
});