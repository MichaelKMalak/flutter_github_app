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
      builder:
          (BuildContext context, RepositoryListViewModel model, Widget child) =>
              Scaffold(
        appBar: AppBar(
          title: const Text('Trending Repos'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: RefreshIndicator(
              onRefresh: model.refresh,
              child: LoadMore(
                isFinish: model.isFinished,
                onLoadMore: model.loadMore,
                //whenEmptyLoad: false,
                //delegate: const DefaultLoadMoreDelegate(),
                textBuilder: DefaultLoadMoreTextBuilder.english,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                          color: Colors.grey,
                        ),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: model.repositories?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RepositoryListItem(
                          repository: model.repositories[index]);
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
