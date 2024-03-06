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


