import 'package:flutter/material.dart';
import 'package:flutter_annotation/about.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 83, 83, 83)),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Bloco de Anotações',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.infinity,
              child: Column(
                children: [
                  Text('Todas as Anotações'),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Bloco de Anotações",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
