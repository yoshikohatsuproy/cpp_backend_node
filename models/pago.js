const db = require('../config/config');

const Pago = {};

Pago.getAll = () =>{
    const sql = `SELECT * FROM PAGO`;
    return db.manyOrNone(sql);
}


module.exports = Pago;