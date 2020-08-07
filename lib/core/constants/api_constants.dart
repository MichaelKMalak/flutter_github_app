import 'package:mobile_code_challenge_solution/core/constants/helper_functions.dart';

const String apiEndpoint = 'https://api.github.com/';
const int sendTimeOut = 5000;
const int receiveTimeOut = 10000;

Map<String, dynamic> headersWithoutToken() =>
    {'Content-Type': 'application/json', 'Accept': 'application/json'};

class SearchEndpoint {
  static String search =
      '${apiEndpoint}search/repositories?q=created:>${getDateXDaysAgo(30)}&sort=stars&order=desc';
}
