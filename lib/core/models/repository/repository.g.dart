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
      'stargazers_count',
      serializers.serialize(object.stargazersCount,
          specifiedType: const FullType(int)),
      'html_url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(RepositoryOwner)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
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
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stargazers_count':
          result.stargazersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'html_url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RepositoryOwner))
              as RepositoryOwner);
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
  final String language;
  @override
  final int stargazersCount;
  @override
  final String url;
  @override
  final RepositoryOwner owner;

  factory _$Repository([void Function(RepositoryBuilder) updates]) =>
      (new RepositoryBuilder()..update(updates)).build();

  _$Repository._(
      {this.name,
      this.description,
      this.language,
      this.stargazersCount,
      this.url,
      this.owner})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Repository', 'name');
    }
    if (stargazersCount == null) {
      throw new BuiltValueNullFieldError('Repository', 'stargazersCount');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Repository', 'url');
    }
    if (owner == null) {
      throw new BuiltValueNullFieldError('Repository', 'owner');
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
        language == other.language &&
        stargazersCount == other.stargazersCount &&
        url == other.url &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), description.hashCode),
                    language.hashCode),
                stargazersCount.hashCode),
            url.hashCode),
        owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repository')
          ..add('name', name)
          ..add('description', description)
          ..add('language', language)
          ..add('stargazersCount', stargazersCount)
          ..add('url', url)
          ..add('owner', owner))
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

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  int _stargazersCount;
  int get stargazersCount => _$this._stargazersCount;
  set stargazersCount(int stargazersCount) =>
      _$this._stargazersCount = stargazersCount;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  RepositoryOwnerBuilder _owner;
  RepositoryOwnerBuilder get owner =>
      _$this._owner ??= new RepositoryOwnerBuilder();
  set owner(RepositoryOwnerBuilder owner) => _$this._owner = owner;

  RepositoryBuilder();

  RepositoryBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _language = _$v.language;
      _stargazersCount = _$v.stargazersCount;
      _url = _$v.url;
      _owner = _$v.owner?.toBuilder();
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
    _$Repository _$result;
    try {
      _$result = _$v ??
          new _$Repository._(
              name: name,
              description: description,
              language: language,
              stargazersCount: stargazersCount,
              url: url,
              owner: owner.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
