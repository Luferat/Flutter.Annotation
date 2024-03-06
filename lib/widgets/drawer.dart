// Widget - Menu principal do aplicativo

import 'package:flutter/material.dart';
import 'package:flutter_annotation/screens/about.dart';
import 'package:flutter_annotation/screens/home.dart';
import 'package:flutter_annotation/screens/new.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 140,
            child: DrawerHeader(
              margin: const EdgeInsets.only(top: 25),
              // Imagem de fundo do cabeçalho do menu
              // Lembre-se de adicionar o path da imagem em 'pubspec.yaml'
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mylogo.png'),
                  fit: BoxFit.contain,
                ),
                color: Color.fromARGB(255, 16, 36, 53),
              ),
              child: Center(
                child: Column(
                  children: [
                    // Empilha os textos para fazer um stroke no título
                    Stack(
                      children: <Widget>[
                        // Borda to texto.
                        Text(
                          'Bloco de Anotações',
                          style: TextStyle(
                            fontSize: 28,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 3
                              ..color = Colors.black,
                          ),
                        ),
                        // Preenchimento do texto.
                        const Text(
                          'Bloco de Anotações',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                      ],
                    ),
                    // Subtítulo
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'By Luferat',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Primeiro item do menu
          ListTile(
            // Ícone do item
            leading: const Icon(
              Icons.description,
            ),
            // Título do item
            title: const Text(
              'Todas as Anotações',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            // Açao do item
            onTap: () {
              // FEcha o menu
              Navigator.pop(context);
              // Sobrepõe a página da rota
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
          const Divider(),
          // Segundo item do menu
          ListTile(
            leading: const Icon(
              Icons.note_add,
              size: 24.0,
            ),
            title: const Text(
              'Nova Anotação',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const New()),
              );
            },
          ),
          const Divider(),
          // Terceiro item do menu
          ListTile(
            leading: const Icon(
              Icons.info,
            ),
            title: const Text(
              'Sobre o Aplicativo',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const About()),
              );
            },
          ),
        ],
      ),
    );
  }
}
