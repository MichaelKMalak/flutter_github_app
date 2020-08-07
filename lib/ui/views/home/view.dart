import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/controller/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/home/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base.dart';
import 'package:mobile_code_challenge_solution/ui/views/repository_list/view.dart';
import 'package:mobile_code_challenge_solution/ui/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(
          controllerProvider:
              Provider.of<ControllerProvider>(context, listen: false)),
      builder: (BuildContext context, HomeViewModel model, Widget child) =>
          Scaffold(
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: true,
        bottomNavigationBar: BottomNavBar(
          homeViewModel: model,
        ),
        body: SafeArea(
          child: PageView(
            controller: model.homePageController,
            onPageChanged: (index) {
              model.updatePageIndex(index);
            },
            children: <Widget>[
              RepositoryListView(),
              const Center(child: Text('settings'))
            ],
          ),
        ),
      ),
    );
  }
}
