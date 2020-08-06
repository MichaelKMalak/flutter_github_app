import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';

import '../mock/server.dart';

void main() {
  group('Repository Model', () {
    test('mapping response from json', () {
      //mocking the server side
      final server = MockServer();

      //mocking the mobile side
      final repositoryModel = Repository.fromJsonStr(server.repositoryJsonStr);

      expect(repositoryModel.name, equals(server.repositoryJsonObj['name']));
      expect(repositoryModel.description,
          equals(server.repositoryJsonObj['description']));
      expect(repositoryModel.stargazersCount,
          equals(server.repositoryJsonObj['stargazers_count']));
    });
  });
}
