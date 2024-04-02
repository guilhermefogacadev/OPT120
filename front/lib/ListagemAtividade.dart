import 'package:flutter/material.dart';

class ListagemAtividade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> atividades = [
      {'titulo': 'Atividade 1', 'nota': 8.5, 'data_entrega': '2024-04-01'},
      {'titulo': 'Atividade 2', 'nota': 9.0, 'data_entrega': '2024-04-05'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem de Atividades'),
      ),
      body: ListView.builder(
        itemCount: atividades.length,
        itemBuilder: (context, index) {
          final atividade = atividades[index];
          return ListTile(
            title: Text(atividade['titulo']),
            subtitle: Text('Nota: ${atividade['nota']}'),
            trailing: Text('Data de Entrega: ${atividade['data_entrega']}'),
          );
        },
      ),
    );
  }
}
