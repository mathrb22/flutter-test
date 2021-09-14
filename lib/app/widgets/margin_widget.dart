import 'package:flutter/material.dart';

class Margin extends StatelessWidget {
  final Widget child;
  final double top;
  final double bottom;
  final double left;
  final double right;
  final double? all;

  const Margin(
      {Key? key,
      required this.child,
      this.top = 0,
      this.bottom = 0,
      this.left = 0,
      this.right = 0,
      this.all})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.only(
        top: all ?? top,
        bottom: all ?? bottom,
        left: all ?? left,
        right: all ?? right,
      ),
    );
  }
}
