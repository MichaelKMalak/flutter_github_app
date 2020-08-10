import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/constants/home_tab.dart';
import 'package:mobile_code_challenge_solution/core/providers/controller/provider.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class SettingsViewModel extends BaseModel {
  SettingsViewModel({
    @required ThemeProvider themeProvider,
    @required RepositoryProvider repositoryProvider,
    @required ControllerProvider controllerProvider,
  })  : _themeProvider = themeProvider,
        _repositoryProvider = repositoryProvider,
        _controllerProvider = controllerProvider;

  final ThemeProvider _themeProvider;
  final RepositoryProvider _repositoryProvider;
  final ControllerProvider _controllerProvider;

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
    if (success) _controllerProvider.jumpToPage(HomeTab.repository.index);
    return success;
  }
}
