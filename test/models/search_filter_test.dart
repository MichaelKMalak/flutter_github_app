import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_code_challenge_solution/core/constants/helper_functions.dart';
import 'package:mobile_code_challenge_solution/core/models/search_filter/search_filter.dart';

import '../mock/sort_and_filter.dart';

void main() {
  group('Search Filter Model', () {
    test('mapping filter to string query', () {
      final sortAndFilter = MockSortAndFilter();

      final searchFilter = SearchFilter((SearchFilterBuilder b) => b
        ..numOfDaysAgo = sortAndFilter.numOfDaysAgo
        ..orderType = sortAndFilter.orderType
        ..sortType = sortAndFilter.sortType
        ..requestedPage = sortAndFilter.page);

      expect(searchFilter.toQueryStr(),
          '''?q=created:>${getDateXDaysAgo(sortAndFilter.numOfDaysAgo)}&sort=${sortAndFilter.sortType.name}&order=${sortAndFilter.orderType.name}&page=${sortAndFilter.page}''');
    });
  });
}
