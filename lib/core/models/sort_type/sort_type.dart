library sort_type;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_type.g.dart';

class SortType extends EnumClass {
  const SortType._(String name) : super(name);

  static const SortType stars = _$stars;
  static const SortType forks = _$forks;

  static BuiltSet<SortType> get values => _$values;

  static SortType valueOf(String name) => _$valueOf(name);

  static Serializer<SortType> get serializer => _$sortTypeSerializer;
}