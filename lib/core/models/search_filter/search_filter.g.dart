// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchFilter extends SearchFilter {
  @override
  final OrderType orderType;
  @override
  final int numOfDaysAgo;

  factory _$SearchFilter([void Function(SearchFilterBuilder) updates]) =>
      (new SearchFilterBuilder()..update(updates)).build();

  _$SearchFilter._({this.orderType, this.numOfDaysAgo}) : super._() {
    if (orderType == null) {
      throw new BuiltValueNullFieldError('SearchFilter', 'orderType');
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
        orderType == other.orderType &&
        numOfDaysAgo == other.numOfDaysAgo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, orderType.hashCode), numOfDaysAgo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchFilter')
          ..add('orderType', orderType)
          ..add('numOfDaysAgo', numOfDaysAgo))
        .toString();
  }
}

class SearchFilterBuilder
    implements Builder<SearchFilter, SearchFilterBuilder> {
  _$SearchFilter _$v;

  OrderType _orderType;
  OrderType get orderType => _$this._orderType;
  set orderType(OrderType orderType) => _$this._orderType = orderType;

  int _numOfDaysAgo;
  int get numOfDaysAgo => _$this._numOfDaysAgo;
  set numOfDaysAgo(int numOfDaysAgo) => _$this._numOfDaysAgo = numOfDaysAgo;

  SearchFilterBuilder();

  SearchFilterBuilder get _$this {
    if (_$v != null) {
      _orderType = _$v.orderType;
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
        new _$SearchFilter._(orderType: orderType, numOfDaysAgo: numOfDaysAgo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
