// GENERATED CODE - DO NOT MODIFY BY HAND

part of repository_owner;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryOwner> _$repositoryOwnerSerializer =
    new _$RepositoryOwnerSerializer();

class _$RepositoryOwnerSerializer
    implements StructuredSerializer<RepositoryOwner> {
  @override
  final Iterable<Type> types = const [RepositoryOwner, _$RepositoryOwner];
  @override
  final String wireName = 'RepositoryOwner';

  @override
  Iterable<Object> serialize(Serializers serializers, RepositoryOwner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'login',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'avatar_url',
      serializers.serialize(object.picture,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RepositoryOwner deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryOwnerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'login':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryOwner extends RepositoryOwner {
  @override
  final String name;
  @override
  final String picture;

  factory _$RepositoryOwner([void Function(RepositoryOwnerBuilder) updates]) =>
      (new RepositoryOwnerBuilder()..update(updates)).build();

  _$RepositoryOwner._({this.name, this.picture}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('RepositoryOwner', 'name');
    }
    if (picture == null) {
      throw new BuiltValueNullFieldError('RepositoryOwner', 'picture');
    }
  }

  @override
  RepositoryOwner rebuild(void Function(RepositoryOwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryOwnerBuilder toBuilder() =>
      new RepositoryOwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryOwner &&
        name == other.name &&
        picture == other.picture;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), picture.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryOwner')
          ..add('name', name)
          ..add('picture', picture))
        .toString();
  }
}

class RepositoryOwnerBuilder
    implements Builder<RepositoryOwner, RepositoryOwnerBuilder> {
  _$RepositoryOwner _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  RepositoryOwnerBuilder();

  RepositoryOwnerBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _picture = _$v.picture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryOwner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryOwner;
  }

  @override
  void update(void Function(RepositoryOwnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryOwner build() {
    final _$result =
        _$v ?? new _$RepositoryOwner._(name: name, picture: picture);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
