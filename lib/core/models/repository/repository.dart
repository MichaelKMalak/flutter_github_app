library repository;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'repository.g.dart';

abstract class Repository
    implements Built<Repository, RepositoryBuilder> {
  factory Repository([Function(RepositoryBuilder b) updates]) = _$Repository;

  Repository._();

  String get name;

  String get description;

  @BuiltValueField(wireName: 'stargazers_count')
  int get stargazersCount;

  static Repository fromJsonStr(String jsonStr) {
    return serializers.deserializeWith(
        Repository.serializer, json.decode(jsonStr));
  }

  static Repository fromJsonMap(Map<String, dynamic> jsonObj) {
    return serializers.deserializeWith(
        Repository.serializer, jsonObj);
  }

  static Serializer<Repository> get serializer => _$repositorySerializer;
}