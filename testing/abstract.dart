/*  
  Define abstract class
  abstract is not a class that creates new obj();
  abstract class is used to mold
  to use abstract class -> 
  class [name] implements [abstract_class_name] { ... body}
*/

//abstract Animal
abstract class Animal {
  void breathe(); //Abstract method
  void createNoise() {
    print("Creating animal noise");
  }
}

//abstract IsFunny
abstract class IsFunny {
  void makePeopleLaugh() {
    print("Make people laugh");
  }
}

//abstract IsFree
abstract class IsFree {
  void displayFreeMessage() {
    print("Make people laugh");
  }
}

//[Person class] that implements [abstract Animal]
class Person implements Animal {
  //[Person class ]defined variables
  String firstName, lastName, nationality;

  //Constructor
  Person(this.firstName, this.lastName);

  @override
  void breathe() {
    print("$firstName is breathing");
  }

  @override
  void createNoise() {
    print("$firstName is creating a noise");
  }
}

//[Comedian class] that extends [Person class] and
//implements [abstract IsFunny, abstract isFree]
class Comedian extends Person implements IsFunny, IsFree {
  //Constructor
  //Wrap {} params to make it optional
  Comedian({String firstName, String lastName}) : super(firstName, lastName);

  @override
  void makePeopleLaugh() {
    print("Comedians made people laught");
  }

  @override
  void displayFreeMessage() {
    print("This is free");
  }
}

//##Main method
main(List<String> args) {
  var person = new Person("Kolya", "Madridano");

  print("${person.firstName} ${person.lastName}");
  person.breathe();
}
