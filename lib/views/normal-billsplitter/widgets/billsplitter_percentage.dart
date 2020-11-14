import 'package:flutter/material.dart';

class BillSplitterPercentage extends StatelessWidget {
  final double tipPercentage;
  final Color pink;

  BillSplitterPercentage({
    this.tipPercentage,
    this.pink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 40.0,
      child: Center(
          child: Text(
        "$tipPercentage",
        style: TextStyle(
          color: pink.withOpacity(0.8),
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      )),
    );
  }
}
