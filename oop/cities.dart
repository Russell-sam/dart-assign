enum City {
  london,
  paris,
  newYork,
  tokyo,
  berlin,
}

void main() {
  // Accessing enum values
  print(City.london); // Prints 'London'
  print(City.paris); // Prints 'France'
  print(City.values[2]);

  // Looping through enum values
  for (var city in City.values) {
    print(city);
  }
}
