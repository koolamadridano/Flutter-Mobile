import 'package:flutter/material.dart';
import 'package:flutterMobile/views/basic-layout-with-snackbar/components/custom-button.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        backgroundColor: Colors.indigo,
        shadowColor: Colors.indigo,
        actions: [
          IconButton(
            icon: Icon(Icons.email_outlined),
            onPressed: () => debugPrint("email_outlined icon is triggered"),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () => debugPrint("notifications icon is triggered"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () => print("floatingActionButton is triggered"),
        child: Icon(Icons.call_missed),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Location',
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton()
            // InkWell(
            //   child: Text("Toggle", style: TextStyle(fontSize: 15)),
            //   onTap: () => debugPrint("tap is triggered"),
            // ),
          ],
        ),
      ),
    );
  }
}
