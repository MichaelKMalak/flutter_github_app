library theme_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'theme_state.g.dart';

abstract class ThemeState
    implements Built<ThemeState, ThemeStateBuilder> {
  factory ThemeState([void Function(ThemeStateBuilder b) updates]) =
  _$ThemeState;

  ThemeState._();

  bool get isDarkTheme;

  static Serializer<ThemeState> get serializer =>
      _$themeStateSerializer;
}
