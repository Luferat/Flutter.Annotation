class KeysModel {
  // Atributos
  String id;
  String date;
  String noteId;
  String keyValue;

// Construtor
  KeysModel({
    required this.id,
    required this.date,
    required this.noteId,
    required this.keyValue,
  });

  // Converte dados externos (Ex. JSON) para 'NotesModel'
  KeysModel.fronMap(Map<String, dynamic> map)
      : id = map['id'],
        date = map['date'],
        noteId = map['noteId'],
        keyValue = map['keyValue'];

  // Converte dados 'NotesModel' para Map
  Map<String, dynamic> toMap() {
    return {
      'id': id, 
      'date': date,
      'noteId': noteId,
      'keyValue': keyValue,
    };
  }
}
