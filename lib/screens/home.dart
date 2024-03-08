import 'package:flutter/material.dart';
import '../../database/database.dart';
import 'package:flutter_annotation/functions/date.dart';
import 'package:flutter_annotation/screens/new.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const New()),
          );
        },
        tooltip: 'Nova anotação',
        child: const Icon(Icons.note_add),
      ),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewNote(fullNote: notesList[index]),
                ),
              );
            },
            title: Text(
              notesList[index].title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              getFormattedDate(
                notesList[index].date,
                "yyyy-MM-dd hh:mm:ss",
                "'Em' dd/MM/yyyy 'às' HH:mm",
              ),
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            leading: const Icon(Icons.description),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              tooltip: 'Apagar esta anotação.',
              onPressed: () {
                // Apaga item correspondente
                setState(() {
                  notesList.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
