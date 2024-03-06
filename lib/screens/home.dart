import 'package:flutter/material.dart';
import 'package:flutter_annotation/functions/date.dart';
import 'package:flutter_annotation/models/notes.dart';
import 'package:flutter_annotation/screens/view.dart';
import 'package:flutter_annotation/widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Bloco de Anotações",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: notesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // Carrega a página "AtracaoPage" no contexto atual usando "push()"
              // Passa para "AtracaoPage" (atracao) o item clicado (listaAtracoes[index])
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ViewNote(fullNote: notesList[index])));
            },
            title: Text(notesList[index].title),
            subtitle: Text(
              getFormattedDate(
                notesList[index].date,
                "yyyy-MM-dd hh:mm:ss",
                "'Em' dd/MM/yyyy 'às' HH:mm",
              ),
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.description),
          );
        },
      ),
    );
  }
}

// Alguns dados somente para testes
final List<NotesModel> notesList = [
  NotesModel(
      id: '1',
      title: 'Primeira nota',
      date: '2024-03-04 10:11:12',
      content: 'Minha primeira anotação de teste'),
  NotesModel(
      id: '2',
      title: 'Mais uma nota',
      date: '2024-03-04 18:19:20',
      content: 'Minha anotação importante'),
  NotesModel(
      id: '3',
      title: 'Mais uma notinha',
      date: '2024-03-06 09:10:11',
      content: 'Essa é uma nota rápida'),
  NotesModel(
      id: '4',
      title: 'Anotação inútil',
      date: '2024-03-06 10:20:30',
      content: 'Somente mais uma anotação para ser anotada'),
];
