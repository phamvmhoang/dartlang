import 'Employee.dart';

void main() {
  var name = myName();

  print('My fullname is $name');
  print('Length of My fullname is ${name.length}');

  /* Employee employee = Employee(35);
  employee._age = 34; */
  

}

String myName(){
  return 'Hoang Pham';
}