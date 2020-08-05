import 'package:flutter/cupertino.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base.dart';
import 'package:pedantic/pedantic.dart';

class SplashViewModel extends BaseModel {

  Future<void> onReady(BuildContext context) async {
    setBusy(true);
    //TODO: fetch data from Endpoint
    unawaited(await Future.delayed(const Duration(seconds: 4)));
    setBusy(false);
    goTo(context, path: RoutePaths.home, pushAndReplace: true);
  }
}