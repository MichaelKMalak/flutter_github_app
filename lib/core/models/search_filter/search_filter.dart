library search_filter;

import 'package:built_value/built_value.dart';
import 'package:mobile_code_challenge_solution/core/constants/helper_functions.dart';
import 'package:mobile_code_challenge_solution/core/models/order_type/order_type.dart';
import 'package:mobile_code_challenge_solution/core/models/sort_type/sort_type.dart';

part 'search_filter.g.dart';

abstract class SearchFilter
    implements Built<SearchFilter, SearchFilterBuilder> {
  factory SearchFilter([void Function(SearchFilterBuilder b) updates]) =
      _$SearchFilter;

  SearchFilter._();

  OrderType get orderType;

  SortType get sortType;

  int get numOfDaysAgo;

  int get requestedPage;

  String toQueryStr() {
    return
    '''?q=created:>${getDateXDaysAgo(numOfDaysAgo)}&sort=${sortType.name}&order=${orderType.name}&page=$requestedPage''';
  }
}
