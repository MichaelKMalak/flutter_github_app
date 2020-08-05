import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/view_models/splash/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (SplashViewModel model) async {
        await model.onReady(context);
      },
      builder: (BuildContext context, SplashViewModel model, Widget child) =>
          const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
