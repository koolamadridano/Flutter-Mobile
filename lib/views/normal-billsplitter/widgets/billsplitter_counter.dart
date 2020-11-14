import 'package:flutter/material.dart';

class BillSplitterCounter extends StatelessWidget {
  final Function decreaseCount, increaseCount;
  final Color pink;
  final int personCount;

  BillSplitterCounter({
    this.decreaseCount,
    this.increaseCount,
    this.pink,
    this.personCount,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: decreaseCount,
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Center(
              child: Text(
                "-",
                style: TextStyle(
                  color: pink,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Text(
          '$personCount',
          style: TextStyle(
            color: pink,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: increaseCount,
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Center(
              child: Text(
                "+",
                style: TextStyle(
                  color: pink,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
