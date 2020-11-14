import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Quotes Generator",
      style: TextStyle(
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.left,
    );
  }
}
