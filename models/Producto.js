import Sequelize from 'sequelize';

//importamos la base de datos
import db from '../config/db.js';

//creamos el modelo de nuestra base de datos
export const Producto = db.define('articulos', {
    nombre: {
        type: Sequelize.STRING
    },
    precio_ahora:{
        type: Sequelize.STRING
    },
    precio_antes: {
        type: Sequelize.STRING
    },
    descripcion: {
        type: Sequelize.STRING
    },
    imagen:{
        type: Sequelize.STRING
    },
    stock:{
        type: Sequelize.STRING
    },
    slug: {
        type: Sequelize.STRING
    }
})