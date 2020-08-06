// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchResponse> _$searchResponseSerializer =
    new _$SearchResponseSerializer();

class _$SearchResponseSerializer
    implements StructuredSerializer<SearchResponse> {
  @override
  final Iterable<Type> types = const [SearchResponse, _$SearchResponse];
  @override
  final String wireName = 'SearchResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Repository)])),
    ];

    return result;
  }

  @override
  SearchResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchResponse extends SearchResponse {
  @override
  final BuiltList<Repository> items;

  factory _$SearchResponse([void Function(SearchResponseBuilder) updates]) =>
      (new SearchResponseBuilder()..update(updates)).build();

  _$SearchResponse._({this.items}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('SearchResponse', 'items');
    }
  }

  @override
  SearchResponse rebuild(void Function(SearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResponseBuilder toBuilder() =>
      new SearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResponse && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchResponse')..add('items', items))
        .toString();
  }
}

class SearchResponseBuilder
    implements Builder<SearchResponse, SearchResponseBuilder> {
  _$SearchResponse _$v;

  ListBuilder<Repository> _items;
  ListBuilder<Repository> get items =>
      _$this._items ??= new ListBuilder<Repository>();
  set items(ListBuilder<Repository> items) => _$this._items = items;

  SearchResponseBuilder();

  SearchResponseBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchResponse;
  }

  @override
  void update(void Function(SearchResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchResponse build() {
    _$SearchResponse _$result;
    try {
      _$result = _$v ?? new _$SearchResponse._(items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
