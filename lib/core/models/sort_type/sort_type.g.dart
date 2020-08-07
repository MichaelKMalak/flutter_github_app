// GENERATED CODE - DO NOT MODIFY BY HAND

part of sort_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SortType _$asc = const SortType._('asc');
const SortType _$desc = const SortType._('desc');

SortType _$valueOf(String name) {
  switch (name) {
    case 'asc':
      return _$asc;
    case 'desc':
      return _$desc;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SortType> _$values = new BuiltSet<SortType>(const <SortType>[
  _$asc,
  _$desc,
]);

Serializer<SortType> _$sortTypeSerializer = new _$SortTypeSerializer();

class _$SortTypeSerializer implements PrimitiveSerializer<SortType> {
  @override
  final Iterable<Type> types = const <Type>[SortType];
  @override
  final String wireName = 'SortType';

  @override
  Object serialize(Serializers serializers, SortType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SortType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SortType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
