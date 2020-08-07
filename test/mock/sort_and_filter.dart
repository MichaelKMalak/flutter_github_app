import 'package:mobile_code_challenge_solution/core/models/order_type/order_type.dart';

class MockSortAndFilter {
  int get numOfDaysAgo => 30;
  OrderType get orderType => OrderType.desc;
  int get page => 0;
}