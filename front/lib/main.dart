import 'package:flutter/material.dart';
import 'package:front/CadastroUsuario.dart';
import 'package:front/CadastroAtividade.dart';

import 'package:front/ListagemAtividade.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gerenciador de Atividades',
          style: TextStyle(color: Color.fromARGB(156, 115, 12, 189)),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CadastroUsuario()),
                );
              },
              icon: Icon(Icons.person_add),
              label: Text('Cadastrar Usuário'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CadastroAtividade()),
                );
              },
              icon: Icon(Icons.add_task),
              label: Text('Cadastrar Atividade'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListagemAtividade()),
                );
              },
              icon: Icon(Icons.list),
              label: Text('Listar Atividades'),
            ),
          ],
        ),
      ),
    );
  }
}
