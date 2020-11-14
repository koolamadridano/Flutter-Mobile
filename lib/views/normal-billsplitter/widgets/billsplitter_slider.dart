import 'package:flutter/material.dart';

class BillSplitterSlider extends StatelessWidget {
  final double tipPercentage;
  final Color pink;
  final Function tipOnChange;

  BillSplitterSlider({
    this.tipPercentage,
    this.pink,
    this.tipOnChange,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text(
            "$tipPercentage%",
            style: TextStyle(
              color: pink,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(
            min: 0,
            max: 100,
            activeColor: pink,
            inactiveColor: Colors.grey,
            divisions: 10,
            value: tipPercentage.toDouble(),
            onChanged: tipOnChange,
          )
        ],
      ),
    );
  }
}
