import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("This is a snackbar"),
          backgroundColor: Colors.indigo.shade100,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.indigo, borderRadius: BorderRadius.circular(10)),
          child: Text("Toggle", style: TextStyle(color: Colors.white))),
    );
  }
}
