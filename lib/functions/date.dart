// Comande 'flutter pub add intl' no terminal
import 'package:intl/intl.dart';

// Converte datas entre formatos
// Exemplo de uso:
// Converte a data informada do formato ISO 'yyyy-MM-dd hh:mm'
// para Date-BR 'dd/MM/yyyy HH:mm'
// getFormattedDate(
//    "2024-03-06 10:11:12",
//    "yyyy-MM-dd hh:mm:ss",
//    "dd/MM/yyyy HH:mm"
// );
String getFormattedDate(
  String date, // Data a ser convertida
  String inputFormat, // String com formato atual da data
  String outputFormat, // String com o novo formato da data
) {
  var inputFormatter = DateFormat(inputFormat);
  var inputDate = inputFormatter.parse(date);
  var outputFormatter = DateFormat(outputFormat);
  return outputFormatter.format(inputDate);
}
