import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o App'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Um simples bloco de anotações',
          style: TextStyle(
            color: Colors.green,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
