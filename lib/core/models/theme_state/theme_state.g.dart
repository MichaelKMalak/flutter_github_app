// GENERATED CODE - DO NOT MODIFY BY HAND

part of theme_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThemeState> _$themeStateSerializer = new _$ThemeStateSerializer();

class _$ThemeStateSerializer implements StructuredSerializer<ThemeState> {
  @override
  final Iterable<Type> types = const [ThemeState, _$ThemeState];
  @override
  final String wireName = 'ThemeState';

  @override
  Iterable<Object> serialize(Serializers serializers, ThemeState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'isDarkTheme',
      serializers.serialize(object.isDarkTheme,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ThemeState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThemeStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'isDarkTheme':
          result.isDarkTheme = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ThemeState extends ThemeState {
  @override
  final bool isDarkTheme;

  factory _$ThemeState([void Function(ThemeStateBuilder) updates]) =>
      (new ThemeStateBuilder()..update(updates)).build();

  _$ThemeState._({this.isDarkTheme}) : super._() {
    if (isDarkTheme == null) {
      throw new BuiltValueNullFieldError('ThemeState', 'isDarkTheme');
    }
  }

  @override
  ThemeState rebuild(void Function(ThemeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemeStateBuilder toBuilder() => new ThemeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemeState && isDarkTheme == other.isDarkTheme;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isDarkTheme.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThemeState')
          ..add('isDarkTheme', isDarkTheme))
        .toString();
  }
}

class ThemeStateBuilder implements Builder<ThemeState, ThemeStateBuilder> {
  _$ThemeState _$v;

  bool _isDarkTheme;
  bool get isDarkTheme => _$this._isDarkTheme;
  set isDarkTheme(bool isDarkTheme) => _$this._isDarkTheme = isDarkTheme;

  ThemeStateBuilder();

  ThemeStateBuilder get _$this {
    if (_$v != null) {
      _isDarkTheme = _$v.isDarkTheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThemeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ThemeState;
  }

  @override
  void update(void Function(ThemeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThemeState build() {
    final _$result = _$v ?? new _$ThemeState._(isDarkTheme: isDarkTheme);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
