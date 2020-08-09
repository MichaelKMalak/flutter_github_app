import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/config/provider_config.dart';
import 'package:mobile_code_challenge_solution/config/router_config.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
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
      child: MaterialApp(
        title: 'Github Repositories',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RoutePaths.splash,
        routes: Router.routes(),
      ),
    );
  }
}
