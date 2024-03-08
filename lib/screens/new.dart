import 'package:flutter/material.dart';
import 'package:flutter_annotation/widgets/drawer.dart';
import '../../database/database.dart';
import 'package:flutter_annotation/models/notes.dart';
import 'package:flutter_annotation/screens/home.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Nova Anotação",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Título'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira um título';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _contentController,
                  decoration: const InputDecoration(labelText: 'Conteúdo'),
                  maxLines: null, // Permite múltiplas linhas
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira o conteúdo';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Verifica se o formulário é válido antes de adicionar o novo item
                    if (_formKey.currentState!.validate()) {
                      // Cria um novo objeto NotesModel com os dados do formulário
                      NotesModel newNote = NotesModel(
                        id: DateTime.now()
                            .millisecondsSinceEpoch
                            .toString(), // Gera um ID único
                        title: _titleController.text,
                        date:
                            DateTime.now().toString(), // Usa a data/hora atual
                        content: _contentController.text,
                      );
                      // Adiciona o novo objeto à lista
                      notesList.add(newNote);
                      // Limpa os campos do formulário
                      _titleController.clear();
                      _contentController.clear();
                      // Volta para a tela inicial
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    }
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    // Limpar os controladores quando o widget for descartado
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
