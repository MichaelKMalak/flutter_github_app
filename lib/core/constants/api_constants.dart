const String apiEndpoint = 'https://api.github.com/';
const int sendTimeOut = 5000;
const int receiveTimeOut = 10000;

Map<String, dynamic> headersWithoutToken() =>
    {'Content-Type': 'application/json', 'Accept': 'application/json'};

class SearchEndpoint {
  static String search =
      '${apiEndpoint}search/repositories';
}
