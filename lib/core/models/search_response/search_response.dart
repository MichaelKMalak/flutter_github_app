library search_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';

import '../serializers.dart';

part 'search_response.g.dart';

abstract class SearchResponse
    implements Built<SearchResponse, SearchResponseBuilder> {
  factory SearchResponse([Function(SearchResponseBuilder b) updates]) = _$SearchResponse;

  SearchResponse._();

  BuiltList<Repository> get items;

  static SearchResponse fromJsonStr(String jsonStr) {
    return serializers.deserializeWith(
        SearchResponse.serializer, json.decode(jsonStr));
  }

  static SearchResponse fromJsonMap(Map<String, dynamic> jsonObj) {
    return serializers.deserializeWith(
        SearchResponse.serializer, jsonObj);
  }

  static Serializer<SearchResponse> get serializer => _$searchResponseSerializer;
}