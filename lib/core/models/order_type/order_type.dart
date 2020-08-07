library order_type;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_type.g.dart';

class OrderType extends EnumClass {
  const OrderType._(String name) : super(name);

  static const OrderType asc = _$asc;
  static const OrderType desc = _$desc;

  static BuiltSet<OrderType> get values => _$values;

  static OrderType valueOf(String name) => _$valueOf(name);

  static Serializer<OrderType> get serializer => _$orderTypeSerializer;
}