import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';
import 'package:mobile_code_challenge_solution/ui/utils/owner_tile.dart';
import 'package:mobile_code_challenge_solution/ui/utils/star_count_tile.dart';
import 'package:mobile_code_challenge_solution/ui/utils/styles.dart';

class RepositoryListItem extends StatefulWidget {
  const RepositoryListItem({
    Key key,
    @required this.repository,
  }) : super(key: key);

  final Repository repository;

  @override
  _RepositoryListItemState createState() => _RepositoryListItemState();
}

class _RepositoryListItemState extends State<RepositoryListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                widget.repository.name,
                style: headlineTextStyle,
                ),
              ),
              if (widget.repository.language != null)
                Flexible(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(widget.repository.language)),
                ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(widget.repository.description ?? ''),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOwnerTile(widget.repository.owner),
              buildStarCountTile(widget.repository.stargazersCount),
            ],
          ),
        ],
      ),
    );
  }
}
