import Sequelize from 'sequelize';
import db from '../config/db.js';
//CREAMOS EL MODELO
export const Testimonial = db.define('testimoniales', {
    nombre: {
        type: Sequelize.STRING
    },
    apellido: {
        type: Sequelize.STRING
    },
    correo: {
        type: Sequelize.STRING
    },
    telefono: {
        type: Sequelize.STRING
    },
    mensaje: {
        type: Sequelize.STRING
    }
})