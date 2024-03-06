import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_annotation/about.dart';
import 'package:flutter_annotation/new.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Bloco de Anotações",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 120,
              child: DrawerHeader(
                margin: const EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mylogo.png'),
                    fit: BoxFit.contain,
                  ),
                  color: Color.fromARGB(255, 16, 36, 53),
                ),
                child: Center(
                  // Empilha os textos para fazer stroke
                  child: Stack(
                    children: <Widget>[
                      // Borda to texto.
                      Text(
                        'Bloco de Anotações',
                        style: TextStyle(
                          fontSize: 25,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = Colors.black,
                        ),
                      ),
                      // Preenchimento do texto.
                      const Text(
                        'Bloco de Anotações',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Todas as Anotações',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              title: const Text('Nova Anotação',
                  style: TextStyle(
                    fontSize: 18,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const New()),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Sobre o Aplicativo',
                  style: TextStyle(
                    fontSize: 18,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
