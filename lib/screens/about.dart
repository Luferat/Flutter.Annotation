import 'package:flutter/material.dart';
import 'package:flutter_annotation/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text(
          "Sobre o Aplicativo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/images/mylogo.png'),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Um simples bloco de anotações que serve para fazer anotações. Dãh!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: _launchUrl,
              child: const Text('Ver código fonte'),
            ),
            const SizedBox(height: 32),
            const Text('© 2024 By Luferat'),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    const url = 'https://github.com/Luferat/Flutter.Annotation';
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Falha ao acessar endereço $url');
    }
  }
}
