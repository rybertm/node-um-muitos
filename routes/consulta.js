var express = require('express');
var router = express.Router();
var dbConn = require('../db/db.js');

router.get('/', function (_, res, __) {
    res.redirect('/consulta');
})

// ROTA PARA mostrar a pagina index.ejs, no evento da pasta raiz '/'
router.get('/consulta', function (req, res, next) {
    dbConn.query('SELECT * FROM produto p, categoria c WHERE  p.CodCateg=c.IdCategoria ORDER BY p.IdProduto desc', function (err, queryProduto) {
        if (err) {
            req.flash('error', err);
            // preparar dados para página em views/empresa/index.ejs. 'empresa' é a pasta em view
            res.render('empresa', { dataProduto: '' });
        } else {
            // preparar dados para página em views/editora/index.ejs
            res.render('empresa', { dataProduto: queryProduto });
        }
    });
});

module.exports = router;