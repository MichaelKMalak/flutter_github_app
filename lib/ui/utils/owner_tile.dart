import 'package:flutter/material.dart';
import 'package:mobile_code_challenge_solution/core/models/repository_owner/repository_owner.dart';

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
      const SizedBox(width: 10,),
      Text(owner.name),
    ],
  );
}
