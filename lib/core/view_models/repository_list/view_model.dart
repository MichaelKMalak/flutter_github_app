import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class RepositoryListViewModel extends BaseModel {
  RepositoryListViewModel({
    @required RepositoryProvider repositoryProvider,
  }) : _repositoryProvider = repositoryProvider;

  final RepositoryProvider _repositoryProvider;
  UnmodifiableListView<Repository> get repositories =>
      _repositoryProvider.repositories;

  bool get isFinished => _repositoryProvider.isFinished;

  Future<bool> loadMore() async {
    setBusy(true);
    final success = await _repositoryProvider.getMoreRepositories();
    setBusy(false);
    if (success) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> refresh() async {
    setBusy(true);
    final success = await _repositoryProvider.getRepositories();
    setBusy(false);
    if (success) {
      return true;
    } else {
      return false;
    }
  }
}
