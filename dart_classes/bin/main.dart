import 'package:dart_classes/dart_classes.dart' as dart_classes;

import 'package:dart_classes/Person.dart';
import 'package:dart_classes/employee.dart';

main(List<String> arguments) {

  Person person = Person('Lam');
  person.eat();
  person.sleep();
  person.sayMyName();

  Employee employee = Employee('Hoang', 'Java Technical Lead');
  employee.introduce();

}
