//aqui iran los controladores
import {Producto} from '../models/Producto.js'
import {Testimonial} from '../models/Testimoniales.js';


const paginaInicio = async(req, res)=>{

    const promiseDB = [];
    promiseDB.push(Testimonial.findAll({limit: 3}));
    promiseDB.push(Producto.findAll({limit: 4}))

    try {
        const resultado = await Promise.all(promiseDB);

        res.render('inicio', {
            pagina: 'inicio',
            clase: 'home',
            testimoniales: resultado[0],
            productos: resultado[1]
        })
    

        
    } catch (error) {
        console.log(error)
    }


}

const paginaNosotros = (req, res) =>{
    res.render('nosotros', {
        pagina: 'Nosotros'
    });
}

const paginaProductos = async(req, res) =>{
    const productos = await Producto.findAll();

    res.render('productos', {
        pagina: 'Productos',
        productos
    })

}
const paginaProductosDetalle = async(req, res) =>{
    const {slug} = req.params
    console.log(slug);
    
    try {
        const resultado = await Producto.findOne({where: {slug : slug}});

        res.render('producto', {
            pagina: 'Detalles del producto',
            resultado
        })
    } catch (error) {
        console.log(error)
    }
}

const paginaTestimoniales = async(req, res) =>{

    try {
        const testimoniales = await Testimonial.findAll();
        res.render('testimoniales', {
            pagina: 'Testimoniales',
            testimoniales
        })
        
    } catch (error) {
        console.log(error);
    }
}


export {
    paginaInicio,
    paginaNosotros,
    paginaProductos,
    paginaTestimoniales,
    paginaProductosDetalle
}