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
        decoration: BoxDecoration(
          color: Colors.transparent, //box background
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //     style: BorderStyle.solid,
          //     width: 0.1,
          //     color: Colors.indigo),
        ),
        child: Center(
          child: quoteIndex < quotes.length - 1
              ? Text(
                  //quotes[_quoteIndex % quotes.length],
                  quotes[quoteIndex],
                  textAlign: TextAlign.center,
                )
              : Text("Quotes reached it's limit"),
        ));
  }
}
