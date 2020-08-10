import 'package:flutter/foundation.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class RepositoryItemViewModel extends BaseModel {
  RepositoryItemViewModel({
    @required RepositoryProvider repositoryProvider,
  }) : _repositoryProvider = repositoryProvider;

  final RepositoryProvider _repositoryProvider;

  bool get isSortedByFork => _repositoryProvider.isSortedByFork;
}
