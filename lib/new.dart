import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Nova Anotação'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Crie aqui',
          style: TextStyle(
            color: Colors.green,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}

