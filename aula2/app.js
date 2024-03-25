const express= require('express');
const app= express();
var mysql = require("mysql")


app.use(express.json());
app.use(
    express.urlencoded({
      extended: true,
    })
  );


  var con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root"
});

con.connect(function(err) {
    if (err) throw err;
    
    con.query("use OPT120", function (err, result) {
        if (err) throw err;
    });

    con.query("select * from Usuario", function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
    });

    con.query("select * from Atividade", function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
    });

    con.query("select * from Usuario_Atividade", function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
    });
});




app.listen(3000,()=>{
    console.log("Aplicação no AR");
})