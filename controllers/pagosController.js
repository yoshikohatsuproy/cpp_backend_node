const Pago = require('../models/pago');


module.exports = {
    async getAll(req, res, next){
        try {
            const data = await Pago.getAll();
            console.log(`Pago ${data}`);

            res.status(201).json(data);


        }catch(error){
            console.log(`Error: ${error}`);
            return res.status(501).json({
                success: false,
                message: 'Error al obtener los pagos'
            })
        }
    }
}