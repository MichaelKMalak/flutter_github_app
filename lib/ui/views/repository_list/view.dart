import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/repository_list/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base/base.dart';
import 'package:mobile_code_challenge_solution/ui/widgets/repository_item.dart';
import 'package:provider/provider.dart';

class RepositoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RepositoryListViewModel>(
      model: RepositoryListViewModel(
          repositoryProvider: Provider.of<RepositoryProvider>(context)),
      onModelReady: (RepositoryListViewModel model) async {
        if (model.repositories.isEmpty) {
          await model.refresh();
        }
      },
      builder:
          (BuildContext context, RepositoryListViewModel model, Widget child) =>
              Scaffold(
        appBar: AppBar(
            title: const Text('Trending Repos'),
            centerTitle: true,
            actions: [
              PopupMenuButton<String>(
                icon: const Icon(Icons.filter_list),
                onSelected: model.sort,
                itemBuilder: (BuildContext context) {
                  return {'stars', 'forks'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text('Sort by $choice'),
                    );
                  }).toList();
                },
              ),
            ]),
        body: SafeArea(
          child: Center(
            child: model.busy
                ? const CircularProgressIndicator()
                : RefreshIndicator(
                    onRefresh: model.refresh,
                    child: LoadMore(
                      isFinish: model.isFinished,
                      onLoadMore: model.loadMore,
                      textBuilder: DefaultLoadMoreTextBuilder.english,
                      child: buildListView(model),
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  ListView buildListView(RepositoryListViewModel model) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).primaryColor,
              thickness: 1,
            ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: model.repositories.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => model.launchURL(index),
            child: RepositoryListItem(repository: model.repositories[index]),
          );
        });
  }
}
