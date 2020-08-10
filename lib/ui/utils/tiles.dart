import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_code_challenge_solution/core/models/repository_owner/repository_owner.dart';

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

Widget buildForkCountTile(int forksCount) {
  return Row(
    children: [
      const Icon(Icons.call_split),
      Text(
        NumberFormat.compact().format(forksCount),
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}

Widget buildOwnerTile(RepositoryOwner owner) {
  return Row(
    children: [
      Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(owner.picture),
              ))),
      const SizedBox(
        width: 10,
      ),
      Text(owner.name),
    ],
  );
}
