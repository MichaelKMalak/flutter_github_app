import 'package:flutter/material.dart';

class WebAppWrapper extends StatelessWidget {
  final Widget widget;

  WebAppWrapper(this.widget);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_1280.jpg', fit: BoxFit.fitWidth,),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform(
                transform: Matrix4.identity()..scale(0.85, 0.85),
                alignment: Alignment.center,
                child: SizedBox(
                  height: size.height,
                  width: size.height / 2.12,
                  child: Stack(
                    children: [
                      phoneLayer(
                          Container(
                              color: Colors.white,
                              child: const Center(
                                  child: CircularProgressIndicator())),
                          shadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 100,
                                spreadRadius: -15,
                                offset: const Offset(0, 80))
                          ]),
                      Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/flutter-yeti.appspot.com/o/oneplus.png?alt=media'),
                      phoneLayer(widget),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget phoneLayer(Widget child, {List<BoxShadow> shadow}) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
      child: ClipRRect(borderRadius: BorderRadius.circular(20), child: child),
      decoration: BoxDecoration(boxShadow: shadow),
    );
  }
}
