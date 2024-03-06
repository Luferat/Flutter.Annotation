// Comande 'flutter pub add intl' no terminal
import 'package:intl/intl.dart';

// Converte datas entre formatos
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
