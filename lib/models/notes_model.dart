class NotesModel {
  // Atributos
  String id;
  String title;
  String date;
  String content;

// Construtor
  NotesModel({
    required this.id,
    required this.title,
    required this.date,
    required this.content,
  });

  // Construtor que converte dados externos (Ex. JSON) para 'NotesModel'
  NotesModel.fronMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        date = map['date'],
        content = map['content'];

  // Converte dados 'NotesModel' para Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'date': date,
      'content': content,
    };
  }
}

final List<NotesModel> notesList = [
  NotesModel(
      id: '1',
      title: 'Primeira nota',
      date: '2024-03-04 10:11:12',
      content: 'Minha primeira anotação de teste'),
  NotesModel(
      id: '2',
      title: 'Mais uma nota',
      date: '2024-03-04 18:19:20',
      content: 'Minha anotação importante'),
  NotesModel(
      id: '3',
      title: 'Mais uma notinha',
      date: '2024-03-06 09:10:11',
      content: 'Essa é uma nota rápida'),
  NotesModel(
      id: '4',
      title: 'Anotação inútil',
      date: '2024-03-06 10:20:30',
      content: 'Somente mais uma anotação para ser anotada'),
];
