import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_code_challenge_solution/core/models/repository/repository.dart';

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
      child: Row(
        children: <Widget>[
          Text(widget.repository.name)
//          Expanded(
//            flex: 3,
//            child: GestureDetector(
//                onTap: () => _openProductDetails(),
//                child:
//                ProductNameResponsive(product: widget.onlineOrderProduct)),
//          ),
//          Expanded(
//            flex: 2,
//            child: PriceListTile(productModel: widget.onlineOrderProduct),
//          ),
//          AddToCartBtn(widget.onlineOrderProduct),
        ],
      ),
    );
  }
}
