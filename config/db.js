import Sequelize from 'sequelize';
import dotenv from 'dotenv';
dotenv.config({ path : 'variables.env'});

//nos conectamos a la base de datos
const db = new Sequelize(process.env.BD_NOMBRE,process.env.BD_USER,process.env.BD_PASS, {
    host: process.env.BD_HOST,
    port: process.env.BD_PORT,
    dialect: 'mysql',
    define: {
        timestamps: false
    },
    pool: {
        max: 5,
        min: 0,
        accquire: 3000,
        idle: 1000
    },

});

export default db;