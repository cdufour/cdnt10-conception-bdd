const express = require('express');
const mysql = require('mysql');

const conn = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'aston',
    password: 'demo',
    database: 'footAspv'
});

conn.connect();

const app = express();

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*"); 
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
})

app.get('/test', (req, res) => {
    res.send('ok');
})

app.get('/role', (req, res) => {

    // interrogation de la base de données
    conn.query("SELECT nom FROM role", (err, results, fields) => {

        res.json(results.splice(1,2));
    })

    //res.send('role');
})

app.post('/joueur', (req, res) => {
    // ToDo : 
    // 1. Extaire et vérifier le corps de la requête
    // 2. Requête en base de données (INSERT)
    res.send('En cours de construction...');

})

app.listen(3000, () => {
    console.log('Serveur écoute port 3000...')
})