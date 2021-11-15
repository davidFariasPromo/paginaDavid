//importamos el modelo que habiamos creado
import {Testimonial} from '../models/Testimoniales.js';

export const guardarTestimonial = async(req,res)=>{

    const {nombre, apellido, correo, telefono, mensaje} = req.body;
    //arreglo que se ira llenando si los campos estan vacios
    const errores = [];

    //validamos
    if(nombre.trim() === ''){
        errores.push({
            mensaje: 'El campo de nombre no puede ir vacio'
        })
    }
    if(apellido.trim() === ''){
        errores.push({
            mensaje: 'El campo de apellido no puede ir vacio'
        })
    }
    if(correo.trim() === ''){
        errores.push({
            mensaje: 'El campo de correo no puede ir vacio'
        })
    }
    if(telefono.trim() === ''){
        errores.push({
            mensaje: 'El campo de telefono no puede ir vacio'
        })
    }
    if(mensaje.trim() === ''){
        errores.push( {
            mensaje: 'Tiene que agregar una expriencia con nosotros'
        })
    }

    if(errores.length > 0 ){
        //Se consultan los testimoniales existesnte
        const testimoniales = await Testimonial.findAll();

        res.render('testimoniales', {
            pagina: 'Testimoniales',
            errores,
            nombre,
            apellido,
            correo,
            telefono,
            mensaje,
            testimoniales
        })
    }
    else{
        //entonces agregamos los testimoniales a la base de datos
        try {
            await Testimonial.create( {
                nombre,
                apellido,
                correo,
                telefono,
                mensaje
            })

            res.redirect('/testimoniales')
        } catch (error) {
            console.log(error)
        }
    }

}

