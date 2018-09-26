import 'dart:io';
import 'dart:async';

main(List<String> args) {
  displayPersonByIndex();
  return;
  stdout.write('What is your name? \r\n');
  String name = stdin.readLineSync();
  // print('Welcome $name to dart world');
  name.isEmpty ? stderr.write('Name is empty') :  stdout.write('Welcome $name to dart world\r\n');
}

displayPersonByIndex(){
  List<String> list = ['Hoang', 'Mai', 'Anh'];
  stdout.write('Enter the index: ');
  int index = int.parse(stdin.readLineSync());
  stdout.write('Your name is: ${list.elementAt(index)}');

}