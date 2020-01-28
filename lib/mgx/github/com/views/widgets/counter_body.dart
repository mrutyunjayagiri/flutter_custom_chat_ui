import 'package:flutter/material.dart';

class MyCounterBody extends StatelessWidget {
  final double minValue = 8.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
