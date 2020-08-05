import 'package:flutter/widgets.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/ui/views/home/view.dart';
import 'package:mobile_code_challenge_solution/ui/views/splash/view.dart';

const String initialRoute = 'Splash Screen';

class Router {
  static dynamic routes() => {
    initialRoute: (BuildContext context) => SplashView(),
    RoutePaths.Home: (BuildContext context) => HomeView(),
  };
}