class Location {
  num lat, long, steps;

  Location(this.lat, this.long);
  Location.start(this.lat, this.long);
  Location.end(this.lat, this.long, this.steps);
}

class StartingLocation extends Location {
  //Target the default constructor
  StartingLocation({num lat, num long}) : super.start(lat, long);

  String toggleStartLocation() {
    var result = "\n\nStarted location -> LAT: $lat LONG: $long\n\n";
    return result;
  }
}

class Destination extends Location {
  num steps;
  Destination({num lat, num long, this.steps}) : super.end(lat, long, steps);

  String toggleDestination() {
    var result = "\n\nDestination -> LAT: $lat LONG: $long STEPS: $steps\n\n";
    return result;
  }
}

main(List<String> args) {
  var startingLocation = new StartingLocation(lat: 122.179, long: -33.49);
  var destination = new Destination(lat: 122.179, long: -33.49, steps: 4912828);

  print(startingLocation.toggleStartLocation());
  print(destination.toggleDestination());
}
