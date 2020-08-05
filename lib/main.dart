import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/provider_config.dart';
import 'package:mobile_code_challenge_solution/ui/router.dart';
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
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: initialRoute,
        routes: Router.routes(),
      ),
    );
  }
}
