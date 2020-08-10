import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/core/models/sort_type/sort_type.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return success;
  }

  Future<bool> refresh() async {
    setBusy(true);
    final success = await _repositoryProvider.getRepositories();
    setBusy(false);
    return success;
  }

  void launchURL(int index) async {
    final url = repositories[index].url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> sortBy(SortType sortType) async {
    setBusy(true);
    final success = await _repositoryProvider.updateSortType(sortType);
    setBusy(false);
    return success;
  }

  void sort(String value) {
    final type = SortType.valueOf(value);
    if (type != null) sortBy(type);
  }
}
