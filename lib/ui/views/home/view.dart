import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/get_repos/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/home/view_model.dart';
import 'package:mobile_code_challenge_solution/ui/views/base.dart';
import 'package:mobile_code_challenge_solution/ui/views/repository_list/view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(
          repositoryProvider: Provider.of<RepositoryProvider>(context)),
      builder: (BuildContext context, HomeViewModel model, Widget child) =>
          Scaffold(
              resizeToAvoidBottomInset: true,
              resizeToAvoidBottomPadding: true,
              bottomNavigationBar: buildBottomNavigationBar(),
              body: SafeArea(child: getScreen(0))),
    );
  }

  Widget getScreen(int index) {
    switch (index) {
      case 0:
        return RepositoryListView();
      case 1:
        return const Center(
          child: Text('settings'),
        );
    }
    return null;
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.star, size: 32),
          title: Text('Trending'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, size: 32),
          title: Text('Settings'),
        ),
      ],
      selectedItemColor: Colors.blue,
      backgroundColor: Colors.grey.shade200,
      currentIndex: 0,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      //onTap: _onItemTapped,
    );
  }
}
