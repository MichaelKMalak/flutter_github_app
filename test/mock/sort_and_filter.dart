import 'package:mobile_code_challenge_solution/core/models/order_type/order_type.dart';
import 'package:mobile_code_challenge_solution/core/models/sort_type/sort_type.dart';

class MockSortAndFilter {
  int get numOfDaysAgo => 30;
  OrderType get orderType => OrderType.desc;
  SortType get sortType => SortType.stars;
  int get page => 0;
}