void main() {
  var person = Person('Hoang Pham');
  // person.firstName = 'Hoang';
  // person.firstName = 35;
  person.printName();
}

class Person {

  String firstName;

  Person (this.firstName);

  printName () {
    print(firstName);
  }
}