import 'package:flutter/material.dart';
import 'package:flutterMobile/views/basic-quotes/widgets/quotes_appbar_title.dart';
import 'package:flutterMobile/views/basic-quotes/widgets/quotes_button.dart';
import 'package:flutterMobile/views/basic-quotes/widgets/quotes_data.dart';
import 'package:flutterMobile/views/basic-quotes/widgets/quotes_text.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _quoteIndex = 0;
  var quotes = new Quotes();

  void nextIndex() => setState(() {
        if (_quoteIndex < quotes.getQuotes().length - 1) {
          _quoteIndex += 1;
          print("$_quoteIndex / ${quotes.getQuotes().length}");
        } else
          print("Last index reached");
      });

  void prevIndex() => setState(() {
        if (!(_quoteIndex < 1)) {
          _quoteIndex -= 1;
          print("$_quoteIndex / ${quotes.getQuotes().length}");
        } else
          print("Last index reached");
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuoteMessages(
              quoteIndex: _quoteIndex,
              quotes: [...quotes.getQuotes()],
            ),
            QuotesButtons(
              prevIndex: prevIndex,
              nextIndex: nextIndex,
              quoteIndex: _quoteIndex,
            ),
          ],
        ),
      ),
    );
  }
}
