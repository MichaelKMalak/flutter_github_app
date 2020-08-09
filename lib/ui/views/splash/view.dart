import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/constants/image_paths.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/splash/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base/base.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
        model: SplashViewModel(
          repositoriesProvider: Provider.of<RepositoryProvider>(context),
        ),
        onModelReady: (SplashViewModel model) async {
          await model.onReady(context);
        },
        builder: (BuildContext context, SplashViewModel model, Widget child) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                  child: Opacity(
                opacity: controller.value,
                child: Image.network(
                  ImagePaths.githubLogo,
                  width: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.fitWidth,
                ),
              ),
                  ),
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    controller.repeat(reverse: true);
    controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
