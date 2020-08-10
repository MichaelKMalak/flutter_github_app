import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mobile_code_challenge_solution/config/provider_config.dart';
import 'package:mobile_code_challenge_solution/config/router_config.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/core/providers/theme_provider/provider.dart';
import 'package:mobile_code_challenge_solution/core/services/i18n/i18n.dart';
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
            localizationsDelegates: [
              const AppLocalizationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback:
                (Locale locale, Iterable<Locale> supportedLocales) {
              print('checking $locale');
              return locale;
            },
            supportedLocales: [
              const Locale('en'),
            ],
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
