import 'package:flutter/material.dart';
import 'package:flutter_annotation/models/notes.dart';

class ViewNote extends StatelessWidget {
  final NotesModel fullNote;

  const ViewNote({super.key, required this.fullNote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Nota completa",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const Text('Nota completa'),
    );
  }
}
