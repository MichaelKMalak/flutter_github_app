import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/core/models/search_filter/search_filter.dart';
import 'package:mobile_code_challenge_solution/core/models/search_response/search_response.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/api.dart';

class RepositoryProvider with ChangeNotifier {
  final GetReposApi _api = GetReposApi();
  SearchResponse _searchResponse;
  UnmodifiableListView<Repository> get repositories =>
      UnmodifiableListView(_searchResponse.items);

  int get totalRepoCount => _searchResponse.totalCount;

  Future<bool> getRepositories(SearchFilter searchFilter) async {
    final apiResponse = await _api.getRepositories(searchFilter);
    if (apiResponse != null) {
      _searchResponse = apiResponse;
      return true;
    }
    return false;
  }
}
