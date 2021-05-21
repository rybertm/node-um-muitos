var createError = require('http-errors');
var path = require('path');
var express = require('express');
var mysql = require('mysql');
var flash = require('express-flash');
var session = require('express-session');
var app = express();

// configuracao de views, para uso de: (.ejs - html)
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  cookie: { maxAge: 60000 },
  store: new session.MemoryStore,
  saveUninitialized: true,
  resave: 'true',
  secret: 'secret'
}));

app.use(flash());

app.use('/', require('./routes/consulta.js'));
// app.use('/consulta', require('./routes/consulta.js'));
app.use('/insercao', require('./routes/insercao.js'));
app.use('/addmodal', require('./routes/addmodal.js'));

// erro de pagina 400
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // rederizar erro de pagina - 500
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
