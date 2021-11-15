import Sequelize from 'sequelize';


//nos conectamos a la base de datos
const db = new Sequelize('paginadavidnegocio','root','2711', {
    host: '127.0.0.1',
    port: '3306',
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
    operatorsAliases: false
});

export default db;