const express= require('express');
const app= express();
var mysql = require("mysql")


app.use(express.json());


  var con = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    database: "OPT120"
});



app.get('/usuario', (req, res) => {
    con.query("SELECT * FROM usuario", function (err, result) {
      if (err) {
        res.status(500).send("Erro ao recuperar os dados do usuário.");
      } else {
        res.json(result);
      }
    });
  });

  app.get('/atividade', (req, res) => {
    con.query("SELECT * FROM atividade", function (err, result) {
      if (err) {
        res.status(500).send("Erro ao recuperar os dados de atividade.");
      } else {
        res.json(result);
      }
    });
  });

app.listen(3000,()=>{
    console.log("Aplicação no AR");
})