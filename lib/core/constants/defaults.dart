import 'package:mobile_code_challenge_solution/core/models/order_type/order_type.dart';
import 'package:mobile_code_challenge_solution/core/models/sort_type/sort_type.dart';

class Defaults {
  ///Default Repo filter
  static const int numOfDaysAgo = 30;
  static const OrderType orderType = OrderType.desc;
  static const SortType sortType = SortType.stars;

  ///slider in settings view
  static const double minSliderValue = 1;
  static const double maxSliderValue = 270;
  static const int divisionSliderValue = 9;
}