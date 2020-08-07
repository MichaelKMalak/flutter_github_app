import 'package:flutter/cupertino.dart';
import 'package:mobile_code_challenge_solution/core/constants/defaults.dart';
import 'package:mobile_code_challenge_solution/core/constants/routes.dart';
import 'package:mobile_code_challenge_solution/core/models/search_filter/search_filter.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base.dart';

class SplashViewModel extends BaseModel {
  SplashViewModel({
    @required RepositoryProvider repositoriesProvider,
  })  : _repositoriesProvider = repositoriesProvider;

  final RepositoryProvider _repositoriesProvider;

  Future<void> onReady(BuildContext context) async {
    final defaultSearchFilter = SearchFilter((SearchFilterBuilder b) => b
      ..numOfDaysAgo = numOfDaysAgoByDefault
      ..orderType = orderTypeByDefault);

    setBusy(true);
    await _repositoriesProvider.getRepositories(defaultSearchFilter);
    setBusy(false);
    goTo(context, path: RoutePaths.home, pushAndReplace: true);
  }
}