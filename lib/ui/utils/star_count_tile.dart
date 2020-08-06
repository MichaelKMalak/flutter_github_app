import 'package:flutter/material.dart';

Widget buildStarCountTile(int stargazersCount) {
  return Row(
    children: [
      const Icon(Icons.star),
      Text(
        stargazersCount.toString(),
        overflow: TextOverflow.clip,
      ),
    ],
  );
}
