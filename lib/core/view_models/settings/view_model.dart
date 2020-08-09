import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class SettingsViewModel extends BaseModel {
  SettingsViewModel({
    @required ThemeProvider themeProvider,
  }) : _themeProvider = themeProvider;

  final ThemeProvider _themeProvider;

  void toggleTheme() {
    _themeProvider.toggleTheme();
  }
}
