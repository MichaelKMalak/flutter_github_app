// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchFilter> _$searchFilterSerializer =
    new _$SearchFilterSerializer();

class _$SearchFilterSerializer implements StructuredSerializer<SearchFilter> {
  @override
  final Iterable<Type> types = const [SearchFilter, _$SearchFilter];
  @override
  final String wireName = 'SearchFilter';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchFilter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sort',
      serializers.serialize(object.sortType,
          specifiedType: const FullType(SortType)),
      'no_days',
      serializers.serialize(object.numOfDaysAgo,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  SearchFilter deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchFilterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sort':
          result.sortType = serializers.deserialize(value,
              specifiedType: const FullType(SortType)) as SortType;
          break;
        case 'no_days':
          result.numOfDaysAgo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchFilter extends SearchFilter {
  @override
  final SortType sortType;
  @override
  final int numOfDaysAgo;

  factory _$SearchFilter([void Function(SearchFilterBuilder) updates]) =>
      (new SearchFilterBuilder()..update(updates)).build();

  _$SearchFilter._({this.sortType, this.numOfDaysAgo}) : super._() {
    if (sortType == null) {
      throw new BuiltValueNullFieldError('SearchFilter', 'sortType');
    }
    if (numOfDaysAgo == null) {
      throw new BuiltValueNullFieldError('SearchFilter', 'numOfDaysAgo');
    }
  }

  @override
  SearchFilter rebuild(void Function(SearchFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchFilterBuilder toBuilder() => new SearchFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchFilter &&
        sortType == other.sortType &&
        numOfDaysAgo == other.numOfDaysAgo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sortType.hashCode), numOfDaysAgo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchFilter')
          ..add('sortType', sortType)
          ..add('numOfDaysAgo', numOfDaysAgo))
        .toString();
  }
}

class SearchFilterBuilder
    implements Builder<SearchFilter, SearchFilterBuilder> {
  _$SearchFilter _$v;

  SortType _sortType;
  SortType get sortType => _$this._sortType;
  set sortType(SortType sortType) => _$this._sortType = sortType;

  int _numOfDaysAgo;
  int get numOfDaysAgo => _$this._numOfDaysAgo;
  set numOfDaysAgo(int numOfDaysAgo) => _$this._numOfDaysAgo = numOfDaysAgo;

  SearchFilterBuilder();

  SearchFilterBuilder get _$this {
    if (_$v != null) {
      _sortType = _$v.sortType;
      _numOfDaysAgo = _$v.numOfDaysAgo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchFilter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchFilter;
  }

  @override
  void update(void Function(SearchFilterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchFilter build() {
    final _$result = _$v ??
        new _$SearchFilter._(sortType: sortType, numOfDaysAgo: numOfDaysAgo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
