import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_code_challenge_solution/core/models/search_response/search_response.dart';

import '../mock/server.dart';

void main() {
  group('Search Response Model', () {
    test('mapping response from json', () {
      //mocking the server side
      final server = MockServer();

      //mocking the mobile side
      final searchResponseModel =
          SearchResponse.fromJsonStr(server.responseJsonStr);

      expect(searchResponseModel.items.first.name,
          equals(server.repositoryJsonObj['name']));
      expect(searchResponseModel.items.first.description,
          equals(server.repositoryJsonObj['description']));
      expect(searchResponseModel.items.first.stargazersCount,
          equals(server.repositoryJsonObj['stargazers_count']));
    });
  });
}
