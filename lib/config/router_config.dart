import 'package:flutter/widgets.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/ui/views/home/switcher.dart';
import 'package:mobile_code_challenge_solution/ui/views/splash/view.dart';

class Router {
  static dynamic routes() => {
    RoutePaths.splash: (BuildContext context) => SplashView(),
    RoutePaths.home: (BuildContext context) => HomeSwitcher(),
  };
}