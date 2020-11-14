import 'package:flutter/material.dart';
import 'package:flutterMobile/utils/ui/color_hex.dart';
import 'package:flutterMobile/views/normal-billsplitter/widgets/billsplitter_counter.dart';
import 'package:flutterMobile/views/normal-billsplitter/widgets/billsplitter_percentage.dart';
import 'package:flutterMobile/views/normal-billsplitter/widgets/billsplitter_slider.dart';
import 'package:flutterMobile/views/normal-billsplitter/widgets/billsplitter_total.dart';

class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0, _personCount = 1;
  double _amount = 0.0;

  Color _pink = HexColor("#f06292");

  void increaseCount() {
    setState(() {
      if (_personCount >= 0) {
        _personCount += 1;
      }
      print("$_personCount");
    });
  }

  void decreaseCount() {
    setState(() {
      if (!(_personCount >= 1)) {
        _personCount -= 1;
      }
      print("$_personCount");
    });
  }

  void tipOnChange(double value) {
    setState(() {
      _tipPercentage = value.round();
      print("$_tipPercentage");
    });
  }

  void amountOnChange(String value) {
    try {
      _amount = double.parse(value);
      print("Amount is changed");
    } catch (e) {
      _amount = 0.0;
    }
  }

  dynamic calculateTotalPerPerson(int tip, double amount, int split) {
    return (tip + amount) / split;
    //code
  }

  double calculateTip(double tip, double amount, int split) {
    if (amount < 0 || amount.toString().isEmpty || amount == null) return null;
    return (amount * tip) / 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
        ),
        alignment: Alignment.center,
        color: Colors.transparent,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(40.0),
          children: [
            BillSplitterTotal(
              amount: calculateTotalPerPerson(
                  _tipPercentage, _amount, _personCount),
              pink: _pink,
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
              ),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: _pink),
                    decoration: InputDecoration(
                      labelText: "Amount",
                      labelStyle: TextStyle(color: _pink),
                      prefixIcon: Icon(
                        Icons.attach_money,
                        color: _pink,
                      ),
                    ),
                    onChanged: amountOnChange,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BillSplitterPercentage(
                  pink: _pink,
                  tipPercentage: _tipPercentage.toDouble(),
                ),
                BillSplitterCounter(
                  decreaseCount: decreaseCount,
                  increaseCount: increaseCount,
                  personCount: _personCount,
                  pink: _pink,
                ),
              ],
            ),
            BillSplitterSlider(
              pink: _pink,
              tipOnChange: tipOnChange,
              tipPercentage: _tipPercentage.toDouble(),
            ),
          ],
        ),
      ),
    );
  }
}
