library repository;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository.g.dart';

abstract class Repository implements Built<Repository, RepositoryBuilder> {
  factory Repository([void Function(RepositoryBuilder b) updates]) =
      _$Repository;

  Repository._();

  String get name;

  @nullable
  String get description;

  @BuiltValueField(wireName: 'stargazers_count')
  int get stargazersCount;

  static Serializer<Repository> get serializer => _$repositorySerializer;
}
