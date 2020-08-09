import 'package:flutter/cupertino.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class SplashViewModel extends BaseModel {
  SplashViewModel({
    @required RepositoryProvider repositoriesProvider,
  })  : _repositoryProvider = repositoriesProvider;

  final RepositoryProvider _repositoryProvider;

  Future<void> onReady(BuildContext context) async {
    setBusy(true);
    await _repositoryProvider.getRepositories();
    setBusy(false);
    goTo(context, path: RoutePaths.home, pushAndReplace: true);
  }
}