class ApiConstants {
  static const String apiEndpoint = 'https://api.github.com/';
  static const int sendTimeOut = 5000;
  static const int receiveTimeOut = 10000;

  static Map<String, dynamic> headersWithoutToken() =>
      {'Content-Type': 'application/json', 'Accept': 'application/json'};
}

class SearchEndpoint {
  static String search =
      '${ApiConstants.apiEndpoint}search/repositories';
}
