import 'dart:convert';
import 'dart:io';

void main() {
  List<Map<String, dynamic>> jsonList = [];

  // Gera 12 entradas
  for (int i = 1; i <= 12; i++) {
    String id = i.toString();
    String date = DateTime.now().toString();
    String title = 'Título $i';
    String content = loremIpsum.substring(0, 100); // Usando 100 caracteres do texto do Lorem Ipsum

    Map<String, dynamic> entry = {
      'id': id,
      'date': date,
      'title': title,
      'content': content,
    };

    jsonList.add(entry);
  }

  // Converte a lista de mapas para uma string JSON
  String jsonString = jsonEncode(jsonList);

  // Salva o JSON em um arquivo
  saveJsonToFile(jsonString, 'mynotes.json');
}

// Função para salvar o JSON em um arquivo
void saveJsonToFile(String jsonString, String fileName) {
  File(fileName).writeAsStringSync(jsonString);
  print('JSON salvo com sucesso no arquivo $fileName');
}

// Texto Lorem Ipsum para o campo "content"
const String loremIpsum =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.';
