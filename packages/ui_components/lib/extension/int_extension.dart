import 'package:intl/intl.dart';

extension DateParser on int {
  String parseMillisToDate() {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(this);
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    return formatter.format(date);
  }
}