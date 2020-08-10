import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class SettingsViewModel extends BaseModel {
  SettingsViewModel({
    @required ThemeProvider themeProvider,
    @required RepositoryProvider repositoryProvider,
  })  : _themeProvider = themeProvider,
        _repositoryProvider = repositoryProvider;

  final ThemeProvider _themeProvider;
  final RepositoryProvider _repositoryProvider;

  int get numOfDaysAgo => _repositoryProvider.numOfDaysAgo;

  void toggleTheme() {
    _themeProvider.toggleTheme();
  }

  void updateDaysAgo(double days) {
    _repositoryProvider.updateNumOFDaysAgo(days.floor());
  }

  Future<bool> applyFilter() async {
    setBusy(true);
    final success = await _repositoryProvider.getRepositories();
    setBusy(false);
    return success;
  }
}
