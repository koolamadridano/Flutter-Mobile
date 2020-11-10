import 'package:flutter/material.dart';

class QuotesButtons extends StatelessWidget {
  final Function prevIndex, nextIndex;
  final int quoteIndex;

  QuotesButtons({this.prevIndex, this.nextIndex, this.quoteIndex});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.chevron_left,
          ),
          onPressed: prevIndex,
        ),
        Text(quoteIndex.toString()),
        IconButton(
          icon: Icon(
            Icons.chevron_right,
          ),
          onPressed: nextIndex,
        ),
      ],
    );
  }
}
