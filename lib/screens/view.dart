import 'package:flutter/material.dart';
import 'package:flutter_annotation/functions/date.dart';
import 'package:flutter_annotation/models/notes.dart';
import 'package:flutter_annotation/screens/edit.dart';
import 'package:flutter_annotation/screens/home.dart';
import 'package:flutter_annotation/widgets/drawer.dart';

class ViewNote extends StatelessWidget {
  final NotesModel fullNote;

  const ViewNote({super.key, required this.fullNote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Column(
          children: [
            Tooltip(
              message: fullNote.title,
              child: Text(
                fullNote.title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              getFormattedDate(
                fullNote.date,
                "yyyy-MM-dd hh:mm:ss",
                "'Em' dd/MM/yyyy 'às' HH:mm",
              ),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          fullNote.content,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditNote(fullNote: fullNote)),
          );
        },
        tooltip: 'Editar anotação',
        child: const Icon(Icons.edit_square),
      ),
    );
  }
}
