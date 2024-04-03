import 'package:flutter/material.dart';

class ListagemAtividade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> atividades = [
      {'titulo': 'Atividade 1', 'nota': 8.5, 'data_entrega': '2024-04-01'},
      {'titulo': 'Atividade 2', 'nota': 8.0, 'data_entrega': '2024-04-05'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem de Atividades'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: atividades.length,
        itemBuilder: (context, index) {
          final atividade = atividades[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    atividade['titulo'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text('Nota: ${atividade['nota']}'),
                      Spacer(),
                      Text('Data de Entrega: ${atividade['data_entrega']}')
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
