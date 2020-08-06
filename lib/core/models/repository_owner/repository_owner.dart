library repository_owner;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_owner.g.dart';

abstract class RepositoryOwner implements Built<RepositoryOwner, RepositoryOwnerBuilder> {
  factory RepositoryOwner([void Function(RepositoryOwnerBuilder b) updates]) =
      _$RepositoryOwner;

  RepositoryOwner._();

  @BuiltValueField(wireName: 'login')
  String get name;

  @BuiltValueField(wireName: 'avatar_url')
  String get picture;

  static Serializer<RepositoryOwner> get serializer => _$repositoryOwnerSerializer;
}
