import 'package:flutter/material.dart';

class QuoteMessages extends StatelessWidget {
  final int quoteIndex;
  final List<String> quotes;

  QuoteMessages({this.quoteIndex, this.quotes});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350, //set width
        height: 250, //set height
        margin: EdgeInsets.all(30.0), //margin
        padding: EdgeInsets.all(30.0), //padding
        // decoration: BoxDecoration(
        //   color: Colors.grey,
        //   borderRadius: BorderRadius.circular(20),
        //   border: Border.all(
        //     style: BorderStyle.solid,
        //     width: 1.5,
        //     color: colorGrey,
        //   ),
        // ),
        child: Center(
          child: quoteIndex < quotes.length - 1
              ? Text(
                  //quotes[_quoteIndex % quotes.length],
                  quotes[quoteIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : Text("The end",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  )),
        ));
  }
}
