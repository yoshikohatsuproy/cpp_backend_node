const PagosController = require('../controllers/pagosController');

module.exports = (app) => {
    app.get('/api/pagos/getAll', PagosController.getAll);
}