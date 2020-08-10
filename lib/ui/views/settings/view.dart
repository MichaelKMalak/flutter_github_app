import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/constants/defaults.dart';
import 'package:mobile_code_challenge_solution/core/providers/controller/provider.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/settings/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base/base.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsViewModel>(
      model: SettingsViewModel(
        themeProvider: Provider.of<ThemeProvider>(context, listen: false),
        repositoryProvider: Provider.of<RepositoryProvider>(context),
        controllerProvider: Provider.of<ControllerProvider>(context),
      ),
      builder: (BuildContext context, SettingsViewModel model, Widget child) =>
          Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
        ),
        body: model.busy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: model.toggleTheme,
                      child: const ListTile(title: Text('Toggle theme')),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    ...buildFilterSection(model),
                  ],
                ),
              ),
      ),
    );
  }

  List<Widget> buildFilterSection(SettingsViewModel model) {
    return [
      const ListTile(title: Text('Days ago')),
      Slider(
        value: model.numOfDaysAgo as double,
        min: minSliderValueByDefault,
        max: maxSliderValueByDefault,
        divisions: divisionSliderValueByDefault,
        label: model.numOfDaysAgo.round().toString(),
        onChanged: (double value) => model.updateDaysAgo(value),
      ),
      RaisedButton(
        onPressed: model.applyFilter,
        child: const Text('Filter Repositories'),
      ),
    ];
  }
}
