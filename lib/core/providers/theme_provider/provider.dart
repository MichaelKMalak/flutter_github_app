import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/models/theme_state/theme_state.dart';

/// Class which manages and provides the state of the Provider.
///
/// Uses [ChangeNotifier] as a mixin to notify dependant
/// widgets using [notifyListeners].
///

class ThemeProvider with ChangeNotifier {
  /// The state of the provider.
  ThemeState state;

  ThemeProvider()
      : state = ThemeState((ThemeStateBuilder b) => b..isDarkTheme = false);

  /// Changes the state of the provider.
  /// State is changed to hold a new [ThemeState]
  /// with [ThemeState.isDarkTheme] inverted
  /// and dependent widgets are notified using [notifyListeners].
  void toggleTheme() {
    state = state.rebuild((b) => b..isDarkTheme = !state.isDarkTheme);
    notifyListeners();
  }
}
