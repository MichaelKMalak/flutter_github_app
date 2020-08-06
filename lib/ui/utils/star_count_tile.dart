import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget buildStarCountTile(int stargazersCount) {
  return Row(
    children: [
      const Icon(Icons.star),
      Text(
        NumberFormat.compact().format(stargazersCount),
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}
