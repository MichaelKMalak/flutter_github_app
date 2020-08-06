import 'package:flutter/material.dart';

Widget buildStarCount(int stargazersCount) {
  return Row(
    children: [
      const Icon(Icons.star),
      Text(stargazersCount.toString(), overflow: TextOverflow.clip,),
    ],
  );
}
