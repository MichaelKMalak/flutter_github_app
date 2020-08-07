library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/core/models/repository_owner/repository_owner.dart';
import 'package:mobile_code_challenge_solution/core/models/search_response/search_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  RepositoryOwner,
  Repository,
  SearchResponse
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
