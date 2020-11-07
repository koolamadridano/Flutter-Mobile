//[Person class]
class Person {
  String name;
  Person(this.name);
}

main(List<String> args) {
  //Two ways of creating a list
  List<String> girls = [];
  List boys = new List<String>();

  //Adding a value to a list
  girls.add("Ryujin");
  boys.add("JYP");

  //List using a class
  var person1 = new Person("Seo Ye-ji");
  var person2 = new Person("Ryujin");
  var person3 = new Person("Lia");
  var person4 = new Person("Yeji");
  var person5 = new Person("Yuna");
  var person6 = new Person("Chaeryoung");

  //Create a new list
  var listOfPerson = new List<Person>();
  //Add to var listOfPersonn
  listOfPerson.add(person1);
  listOfPerson.add(person2);
  listOfPerson.add(person3);
  listOfPerson.add(person4);
  listOfPerson.add(person5);
  listOfPerson.add(person6);

  //Loop through a list
  for (var person in listOfPerson) {
    print(person.name);
  }

  //print(girls);
  //print(boys);
}
