import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/constants/home_tab.dart';

class ControllerProvider with ChangeNotifier {
  final PageController _homePageController =
      PageController(initialPage: HomeTab.repository.index, keepPage: true);
  int currentIndex = HomeTab.repository.index;

  PageController get homePageController => _homePageController;

  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
