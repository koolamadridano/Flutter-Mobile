import 'package:flutter/material.dart';

class BillSplitterTotal extends StatelessWidget {
  final Color pink;
  final double amount;

  BillSplitterTotal({this.pink, this.amount});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(12.0)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total per person",
              style: TextStyle(color: pink.withOpacity(0.7)),
            ),
            Container(
              margin: EdgeInsets.only(top: 1),
              child: Text(
                "${amount.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
