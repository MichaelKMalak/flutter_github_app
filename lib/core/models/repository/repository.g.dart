// GENERATED CODE - DO NOT MODIFY BY HAND

part of repository;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Repository> _$repositorySerializer = new _$RepositorySerializer();

class _$RepositorySerializer implements StructuredSerializer<Repository> {
  @override
  final Iterable<Type> types = const [Repository, _$Repository];
  @override
  final String wireName = 'Repository';

  @override
  Iterable<Object> serialize(Serializers serializers, Repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'stargazers_count',
      serializers.serialize(object.stargazersCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Repository deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stargazers_count':
          result.stargazersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Repository extends Repository {
  @override
  final String name;
  @override
  final String description;
  @override
  final int stargazersCount;

  factory _$Repository([void Function(RepositoryBuilder) updates]) =>
      (new RepositoryBuilder()..update(updates)).build();

  _$Repository._({this.name, this.description, this.stargazersCount})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Repository', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Repository', 'description');
    }
    if (stargazersCount == null) {
      throw new BuiltValueNullFieldError('Repository', 'stargazersCount');
    }
  }

  @override
  Repository rebuild(void Function(RepositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryBuilder toBuilder() => new RepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Repository &&
        name == other.name &&
        description == other.description &&
        stargazersCount == other.stargazersCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), description.hashCode),
        stargazersCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repository')
          ..add('name', name)
          ..add('description', description)
          ..add('stargazersCount', stargazersCount))
        .toString();
  }
}

class RepositoryBuilder implements Builder<Repository, RepositoryBuilder> {
  _$Repository _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _stargazersCount;
  int get stargazersCount => _$this._stargazersCount;
  set stargazersCount(int stargazersCount) =>
      _$this._stargazersCount = stargazersCount;

  RepositoryBuilder();

  RepositoryBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _stargazersCount = _$v.stargazersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Repository other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Repository;
  }

  @override
  void update(void Function(RepositoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Repository build() {
    final _$result = _$v ??
        new _$Repository._(
            name: name,
            description: description,
            stargazersCount: stargazersCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
