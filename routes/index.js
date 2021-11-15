//aqui iran las rutas
import express from 'express';
//Importamos los controllers
import {paginaNosotros, paginaInicio, paginaProductos, paginaTestimoniales, paginaProductosDetalle} from '../controllers/paginaControllers.js';
import {guardarTestimonial} from '../controllers/testimonialControlers.js'

//instanciamos el router
const router = express.Router();


router.get('/nosotros', paginaNosotros);

router.get('/inicio', paginaInicio);

router.get('/productos', paginaProductos);
router.get('/productos:slug', paginaProductosDetalle);

router.get('/testimoniales', paginaTestimoniales);
//Se ejecutara al momento de enviar elementos
router.post('/testimoniales', guardarTestimonial);



export default router;

