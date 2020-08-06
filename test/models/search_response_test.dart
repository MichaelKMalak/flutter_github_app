import 'package:flutter/foundation.dart';
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
          compute(SearchResponse.fromJsonStr, server.responseJsonStr);

      searchResponseModel.then((value) {
        expect(
            value.items.first.name, equals(server.repositoryJsonObj['name']));
        expect(value.items.first.description,
            equals(server.repositoryJsonObj['description']));
        expect(value.items.first.stargazersCount,
            equals(server.repositoryJsonObj['stargazers_count']));
      });
    });
  });
}
