import 'package:flutter/cupertino.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base.dart';

class SplashViewModel extends BaseModel {

  Future<void> onReady(BuildContext context) async {
    setBusy(true);
    //TODO: fetch data from Endpoint
    await Future.delayed(const Duration(seconds: 4));
    setBusy(false);
    goTo(context, path: RoutePaths.Home, pushAndReplace: true);
  }
}