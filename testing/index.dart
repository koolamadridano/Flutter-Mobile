import 'package:flutter/cupertino.dart';

class Product {
  String name;
  String color;
  int price;

  //Constructor
  Product(this.name, this.color, this.price);

  //Named constructor
  Product.initialize({name, @required price, color}) {
    this.name = name;
    this.price = price;
    this.color = color;
  }

  //Getter & Setter
  String get getName => name;
  int get getPrice => price;

  set setName(String value) => name = value;
  set setPrice(int value) => price = value;
}

main(List<String> args) {
  //Sample data
  var payload = {
    'name': 'Blue Yeti 2nd Edition',
    'model': '2ndEditionBY',
    'color': 'Blue'
  };

  //Here is how you do it in Default
  var productInDefaultClass = new Product("Blue Yeti", "Silver Gray", 150);

  //Here is how we do it in named constructor
  var productInNamedClass =
      new Product.initialize(name: "String", color: "String", price: 150);

  //Here is how we do it in Getter and setter
  productInDefaultClass.setName = "Ryujin pretty";
  productInDefaultClass.setPrice = 150;
}
