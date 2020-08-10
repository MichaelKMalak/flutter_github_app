import 'dart:collection';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/constants/defaults.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/core/models/search_filter/search_filter.dart';
import 'package:mobile_code_challenge_solution/core/models/search_response/search_response.dart';
import 'package:mobile_code_challenge_solution/core/models/sort_type/sort_type.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/api.dart';

class RepositoryProvider with ChangeNotifier {
  final GetReposApi _api = GetReposApi();

  SearchResponse _searchResponse = SearchResponse((SearchResponseBuilder b) => b
    ..items = ListBuilder<Repository>()
    ..totalCount = 0);
  UnmodifiableListView<Repository> get repositories =>
      UnmodifiableListView(_searchResponse.items);

  bool get isFinished => repositories.length >= _searchResponse?.totalCount;

  int currentPage;
  SortType sortType;

  SearchFilter defaultSearchFilter(int _currentPage) =>
      SearchFilter((SearchFilterBuilder b) => b
        ..numOfDaysAgo = numOfDaysAgoByDefault
        ..orderType = orderTypeByDefault
        ..sortType = sortType ?? sortTypeByDefault
        ..requestedPage = _currentPage);

  Future<bool> updateSortType(SortType newSortType) async {
    if(newSortType != sortType) {
      sortType = newSortType;
      final success = await getRepositories();
      return success;
    }
    return false;
  }

  Future<bool> getMoreRepositories() async {
    final searchFilter = defaultSearchFilter(currentPage);
    final apiResponse = await _api.getRepositories(searchFilter);
    if (apiResponse != null) {
      concatNewRepositories(apiResponse);
      currentPage++;
      notifyListeners();
      return true;
    }
    return false;
  }

  void concatNewRepositories(SearchResponse apiResponse) {
    final _addedItems =
        apiResponse.items.takeWhile((t) => !_searchResponse.items.contains(t));
    _searchResponse =
        _searchResponse.rebuild((b) => b..items.addAll(_addedItems));
  }

  Future<bool> getRepositories() async {
    currentPage = 0;
    final searchFilter = defaultSearchFilter(currentPage);
    final apiResponse = await _api.getRepositories(searchFilter);
    if (apiResponse != null) {
      _searchResponse = apiResponse;
      currentPage++;
      notifyListeners();
      return true;
    }
    return false;
  }
}
