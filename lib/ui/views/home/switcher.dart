import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/ui/views/home/view.dart';
import 'package:mobile_code_challenge_solution/ui/widgets/web_app_wrapper.dart';

class HomeSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, _) {
      final orientation = MediaQuery.of(context).orientation;

      if (isTablet(context) || orientation == Orientation.portrait) {
        return HomeView();
      }

      return WebAppWrapper(HomeView());
    });
  }

  bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    if (height > width) {
      if (height / width < 1.4) {
        return true;
      }
    }
    if (width > height) {
      if (width / height < 1.4) {
        return true;
      }
    }
    return false;
  }
}
