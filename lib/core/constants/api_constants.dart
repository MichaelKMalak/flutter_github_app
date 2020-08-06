import 'package:intl/intl.dart';

const String apiEndpoint = 'https://api.github.com/';
const int sendTimeOut = 5000;
const int receiveTimeOut = 10000;

Map<String, dynamic> headersWithoutToken() =>
    {'Content-Type': 'application/json', 'Accept': 'application/json'};

class SearchEndpoint {
  static String search =
      '${apiEndpoint}search/repositories?q=created:>${getDateXDaysAgo(30)}&sort=stars&order=desc';
}

String getDateXDaysAgo(int numOfDaysAgo) {
  final currentDate = DateTime.now();
  final dateThirtyDaysAgo =
  DateTime(currentDate.year, currentDate.month, currentDate.day - numOfDaysAgo);
  final formatter = DateFormat('yyyy-MM-dd');
  final formatted = formatter.format(dateThirtyDaysAgo);
  return formatted.toString();
}
