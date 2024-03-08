import 'package:flutter/material.dart';
import 'package:flutter_annotation/models/notes.dart';
import 'package:flutter_annotation/screens/view.dart';

class EditNote extends StatefulWidget {
  final NotesModel fullNote;
  const EditNote({super.key, required this.fullNote});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    // Inicializa os controladores com os valores da nota atual
    _titleController = TextEditingController(text: widget.fullNote.title);
    _contentController = TextEditingController(text: widget.fullNote.content);
  }

  @override
  void dispose() {
    // Libera os controladores quando o widget é destruído
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Editar Anotação",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _contentController,
              maxLines: null, // Permite várias linhas de texto
              decoration: const InputDecoration(labelText: 'Conteúdo'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Atualiza os campos da nota com os valores dos controladores
                widget.fullNote.title = _titleController.text;
                widget.fullNote.content = _contentController.text;
                // Atualiza a data para a data atual
                widget.fullNote.date = DateTime.now().toString();
                // Salva as atualizações
                // Por exemplo, você pode chamar uma função de salvamento aqui
                // saveChanges(widget.fullNote);
                // Depois de salvar, você pode retornar para a tela anterior
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewNote(fullNote: widget.fullNote),
                ),
              );
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
