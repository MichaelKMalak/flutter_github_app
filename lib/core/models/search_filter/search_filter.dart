library search_filter;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile_code_challenge_solution/core/constants/helper_functions.dart';
import 'package:mobile_code_challenge_solution/core/models/sort_type/sort_type.dart';

part 'search_filter.g.dart';

abstract class SearchFilter
    implements Built<SearchFilter, SearchFilterBuilder> {
  factory SearchFilter([void Function(SearchFilterBuilder b) updates]) =
      _$SearchFilter;

  SearchFilter._();

  @BuiltValueField(wireName: 'sort')
  SortType get sortType;

  @BuiltValueField(wireName: 'no_days')
  int get numOfDaysAgo;

  String toQueryStr() {
    return
    '''?q=created:>${getDateXDaysAgo(numOfDaysAgo)}&sort=stars&order=${sortType.name}''';
  }

  static Serializer<SearchFilter> get serializer =>
      _$searchFilterSerializer;
}
