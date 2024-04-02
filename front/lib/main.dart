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
      title: 'Gerenciador de Atividades',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white, //
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
        title: Text('Menu Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
