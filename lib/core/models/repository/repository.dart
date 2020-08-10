library repository;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile_code_challenge_solution/core/models/repository_owner/repository_owner.dart';

part 'repository.g.dart';

abstract class Repository implements Built<Repository, RepositoryBuilder> {
  factory Repository([void Function(RepositoryBuilder b) updates]) =
      _$Repository;

  Repository._();

  String get name;

  @nullable
  String get description;

  @nullable
  String get language;

  @BuiltValueField(wireName: 'stargazers_count')
  int get stargazersCount;

  @BuiltValueField(wireName: 'forks_count')
  int get forksCount;

  @BuiltValueField(wireName: 'html_url')
  String get url;

  RepositoryOwner get owner;

  static Serializer<Repository> get serializer => _$repositorySerializer;
}
