const express = require('express');
const app = express();
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

app.post('/create/usuario', (req, res) => {
  const { nome, email, senha } = req.body;

  const query = `
      INSERT INTO usuario (nome, email, senha)
      VALUES (?, ?, ?)
    `;

  con.query(query, [nome, email, senha], (err, result) => {
    if (err) {
      res.status(500).send("Erro ao inserir os Dados.");
    } else {
      res.status(200).send("Dados inseridos com Sucesso!");
    }

    con.end();
  });
});

app.post('/create/atividade', (req, res) => {
  const { titulo, nota, data } = req.body;

  const query = `
      INSERT INTO atividade (titulo, nota, data_entrega)
      VALUES (?, ?, ?)
    `;

  con.query(query, [titulo, nota, data], (err, result) => {
    if (err) {
      res.status(500).send("Erro ao inserir os Dados.");
    } else {
      res.status(200).send("Dados inseridos com Sucesso!");
    }

    con.end();
  });
});

app.listen(3000, () => {
  console.log("Aplicação no AR");
})