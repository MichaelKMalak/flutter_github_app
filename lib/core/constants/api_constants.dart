const String apiEndpoint = 'https://api.github.com/';
const int sendTimeOut = 5000;
const int receiveTimeOut = 10000;

Map<String, dynamic> headersWithoutToken() =>
    {'Content-Type': 'application/json', 'Accept': 'application/json'};

class SearchEndpoint {
  static const String search = '${apiEndpoint}search/repositories?q=created:>2017-10-22&sort=stars&order=desc';
}
