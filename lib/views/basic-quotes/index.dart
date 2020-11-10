import 'package:flutter/material.dart';
import 'package:flutterMobile/views/basic-quotes/widgets/quotes_button.dart';
import 'package:flutterMobile/views/basic-quotes/widgets/quotes_text.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List<String> quotes = [
    "Your limitation—it’s only your imagination.",
    "Push yourself, because no one else is going to do it for you.",
    "Sometimes later becomes never. Do it now.",
    "Great things never come from comfort zones.",
    "Dream it. Wish it. Do it.",
    "Success doesn’t just find you. You have to go out and get it.",
    "The harder you work for something, the greater you’ll feel when you achieve it.",
    "Dream bigger. Do bigger.",
    "Don’t stop when you’re tired. Stop when you’re done.",
    "Wake up with determination. Go to bed with satisfaction.",
    "Do something today that your future self will thank you for.",
    "Little things make big days.",
    "It’s going to be hard, but hard does not mean impossible.",
    "Don’t wait for opportunity. Create it.",
    "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.",
    "The key to success is to focus on goals, not obstacles.",
    "Dream it. Believe it. Build it.",
  ];
  int _quoteIndex = 0;

  void nextIndex() {
    setState(() {
      /** 
       *  wrap with setState(() { ...logic }) to update state
       *  only works in StatefulWidget
       **/
      if (_quoteIndex < quotes.length - 1) {
        _quoteIndex += 1;
        print("Index/Length $_quoteIndex / ${quotes.length}");
      } else
        print("Last index reached");
    });
  }

  void prevIndex() {
    setState(() {
      /** 
       *  wrap with setState(() { ...logic }) to update state
       *  only works in StatefulWidget
       **/
      if (!(_quoteIndex < 1)) {
        _quoteIndex -= 1;
        print(_quoteIndex);
      } else
        print("Last index reached");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuoteMessages(
              quoteIndex: _quoteIndex,
              quotes: [...quotes],
            ),
            QuotesButtons(
              prevIndex: prevIndex,
              nextIndex: nextIndex,
              quoteIndex: _quoteIndex,
            )
          ],
        ),
      ),
    );
  }
}
