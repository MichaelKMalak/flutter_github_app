import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/view_models/home/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
      },
      builder: (BuildContext context, HomeViewModel model, Widget child) =>
          const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text('Home Page'),
              ),
            ),
          ),
    );
  }
}
