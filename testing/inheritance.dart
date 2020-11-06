class Person {
  String firstName, lastName, nationality;
  List<String> talent = [];
  int age;

  void toggleDetails() {
    print([
      this.firstName,
      this.lastName,
      this.nationality,
      this.age,
      this.talent
    ]);
  }

  void sayHello() {
    print("Hello!");
  }
}

class Bonni extends Person {
  String profession;

  //Override from parent funct()
  @override
  void sayHello() {
    print("Annyeonghaseyo bonnimida");
  }

  void toggleDetails() {
    print([this.profession, this.firstName]);
  }
}

class Kolya extends Person {
  String profession, yearOfExperience;

  void toggleDetails() {
    print([this.profession, this.firstName, this.yearOfExperience]);
  }
}

main(List<String> args) {
  var obj = new Person();
  obj.talent = ["Singer", "Song-writer", "Dancer"];
  obj.firstName = "Somi";
  obj.lastName = "Douma";
  obj.age = 19;
  obj.nationality = "Korean-Canadian";

  var bonni = new Bonni();
  bonni.firstName = "Bonita";
  bonni.profession = "Back-end Engineer";
  bonni.sayHello();

  var kolya = new Kolya();
  kolya.firstName = "Koola";
  kolya.profession = "Front-end Engineer";
  kolya.yearOfExperience = "2-3 years";

  obj.toggleDetails();
  print("------");
  bonni.toggleDetails();
  print("------");
  kolya.toggleDetails();
}
