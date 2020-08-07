import 'package:intl/intl.dart';

String getDateXDaysAgo(int numOfDaysAgo) {
  final currentDate = DateTime.now();
  final dateThirtyDaysAgo =
  DateTime(currentDate.year, currentDate.month, currentDate.day - numOfDaysAgo);
  final formatter = DateFormat('yyyy-MM-dd');
  final formatted = formatter.format(dateThirtyDaysAgo);
  return formatted.toString();
}