import 'package:flutter/material.dart';
import 'package:flutter_annotation/models/keys_models.dart';
import 'package:flutter_annotation/models/notes_model.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  // Cria uma nota para testes
  final notesModel = NotesModel(
      id: '1',
      title: 'Aniversário',
      date: '2024-03-06 10:34:00',
      content: 'Aniversário do André');

// Cria uma lista de keys para testes
  final List<KeysModel> keysList = [
    KeysModel(
      id: '1',
      date: '2024-03-06 10:38:00',
      noteId: '1',
      keyValue: 'idade',
    ),
    KeysModel(
      id: '2',
      date: '2024-03-06 10:39:00',
      noteId: '1',
      keyValue: 'velho',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloco de Notas",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicou');
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar foto'),
            ),
            const Text(
              'Como fazer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text('Explicação...'),
            const Divider(),
            const Text(
              'Como me sinto',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text('Tudo bem')
          ],
        ),
      ),
    );
  }
}
