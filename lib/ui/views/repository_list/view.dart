import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/repository_list/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base.dart';
import 'package:provider/provider.dart';

import 'file:///E:/projects/mobile-code-challenge-solution-flutter/lib/ui/widgets/repository_item.dart';

class RepositoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RepositoryListViewModel>(
      model: RepositoryListViewModel(
          repositoryProvider: Provider.of<RepositoryProvider>(context)),
      builder:
          (BuildContext context, RepositoryListViewModel model, Widget child) =>
              Scaffold(
        appBar: AppBar(
          title: const Text('Trending Repos'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.grey,
                    ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: model.repositories.length,
                itemBuilder: (BuildContext context, int index) {
                  return RepositoryListItem(
                      repository: model.repositories[index]);
                }),
          ),
        ),
      ),
    );
  }
}
