import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/providers/controller/provider.dart';
import 'package:mobile_code_challenge_solution/core/view_models/base/base.dart';

class HomeViewModel extends BaseModel {
  HomeViewModel({
    @required ControllerProvider controllerProvider,
  }) : _controllerProvider = controllerProvider;

  final ControllerProvider _controllerProvider;
  PageController get homePageController =>
      _controllerProvider?.homePageController;

  void jumpToPage(int index){
    _controllerProvider.jumpToPage(index);
  }

  void updatePageIndex(int index){
    _controllerProvider.updateCurrentIndex(index);
  }
}
