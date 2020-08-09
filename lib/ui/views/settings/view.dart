import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/settings/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base/base.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsViewModel>(
      model: SettingsViewModel(
          themeProvider: Provider.of<ThemeProvider>(context, listen: false)),
      builder: (BuildContext context, SettingsViewModel model, Widget child) =>
          Scaffold(
            appBar: AppBar(
              title: const Text('Settings'),
              centerTitle: true,
            ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MaterialButton(
                onPressed: model.toggleTheme,
                child: const ListTile(title: Text('Toggle theme')),
              ),
              const Divider(thickness: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
