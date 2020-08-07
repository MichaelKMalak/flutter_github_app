import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/controller/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/home/view_model.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({@required HomeViewModel homeViewModel}) : model = homeViewModel;
  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Consumer<ControllerProvider>(
      builder:
          (BuildContext context, ControllerProvider provider, Widget child) {
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
          currentIndex: provider.currentIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: (index) => model.jumpToPage(index),
        );
      },
    );
  }
}