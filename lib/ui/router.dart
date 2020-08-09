import 'package:flutter/widgets.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/ui/views/home/view.dart';
import 'package:mobile_code_challenge_solution/ui/views/splash/view.dart';
import 'package:mobile_code_challenge_solution/ui/widgets/web_app_wrapper.dart';

class Router {
  static dynamic routes() => {
    RoutePaths.splash: (BuildContext context) => SplashView(),
    RoutePaths.home: (BuildContext context) => WebAppWrapper(HomeView()),
  };
}