import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/config/provider_config.dart';
import 'package:mobile_code_challenge_solution/config/router_config.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/ui/utils/themes.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
          return MaterialApp(
            title: 'Github Repositories',
            theme: themeProvider.state.isDarkTheme
                ? buildDarkTheme()
                : buildLightTheme(),
            debugShowCheckedModeBanner: false,
            initialRoute: RoutePaths.splash,
            routes: Router.routes(),
          );
        }));
  }
}
