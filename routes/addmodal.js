var express = require('express');
var router = express.Router();
var dbConn = require('../db/db.js');


//nnovo
router.get('/add', function (req, res, next) {
    dbConn.query('SELECT * FROM produto', function (err, conProduto) {
        res.render('empresa/inserir.ejs', {
            conProd: conProduto,
            IdProduto: '',
        });
    });

    console.log(conProd);
});
// ate aqui novo


// Insere FORNECEDOR, valores vindo de name dos input no body do htm
router.get('/add', function (req, res, next) {
    // render to inserir.ejs, variáveis para get response do servidor
    res.render('empresa/inserir.ejs', {
        Nome: Nome,
        Endereco: Endereco,
        Cidade: Cidade,
        Cep: Cep,
        Pais: Pais,
    })
});


// Insere FORNECEDOR, valores vindo de name dos input no body do html 
router.post('/add', function (req, res, next) {    //'/adicionar' é o caminho indicado em inserir.ejs
    let Nome = req.body.Nome;
    let Endereco = req.body.Endereco;
    let Cidade = req.body.Cidade;
    let Cep = req.body.Cep;
    let Pais = req.body.Pais;
    let errors = false;
    // se nenhum erro
    if (!errors) {
        var insereFornec = {
            Nome: Nome,
            Endereco: Endereco,
            Cidade: Cidade,
            Cep: Cep,
            Pais: Pais,
        }
        // ROTA PARA INSERIR REGISTRO
        dbConn.query('INSERT INTO fornecedor SET ?', insereFornec, function (err, result) {
            //if(err) throw err
            if (err) {
                req.flash('error', err)
                // renderizar página inserir.ejs
                res.render('empresa/inserir.ejs', {
                    Nome: insereFornec.Nome,
                    Endereco: insereFornec.Endereco,
                    Cidade: insereFornec.Cidade,
                    Cep: insereFornec.Cep,
                    Pais: insereFornec.Pais,
                })
            } else {
                req.flash('success', 'Inserido com sucesso');
                res.redirect('/insercao/adicionar');
            }
        })
    }
});

module.exports = router;