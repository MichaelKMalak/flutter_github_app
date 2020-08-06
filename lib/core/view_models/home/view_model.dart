import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base.dart';

class HomeViewModel extends BaseModel {
  HomeViewModel({
    @required RepositoryProvider repositoryProvider,
  }) : _repositoryProvider = repositoryProvider;

  final RepositoryProvider _repositoryProvider;
  UnmodifiableListView<Repository> get repositories =>
      _repositoryProvider.repositories;
}
