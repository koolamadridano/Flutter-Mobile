import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 255, 255, 1),
      appBar: AppBar(
        title: Text("Bizcard"),
        backgroundColor: Colors.pink,
        actions: [],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Nikolai Madridano",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
          Text("+63 995 0977 076",
              style: TextStyle(
                color: Colors.white,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              Text("Twitter: @kolya",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  )),
            ],
          )
        ],
      ),
    );
  }

  _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.pink, width: 1.5),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/300/300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
