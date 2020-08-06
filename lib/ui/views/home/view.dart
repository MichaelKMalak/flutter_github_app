import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/home/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base.dart';
import 'package:provider/provider.dart';

import 'file:///E:/projects/mobile-code-challenge-solution-flutter/lib/ui/widgets/repository_item.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(
          repositoryProvider: Provider.of<RepositoryProvider>(context)),
      onModelReady: (HomeViewModel model) async {},
      builder: (BuildContext context, HomeViewModel model, Widget child) =>
          Scaffold(
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
