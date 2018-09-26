import 'dart:io';

main(List<String> args) {
  /* try {
    int age;
    int month = 12;

    if(age == null) throw NullThrownError();

    print(age * month);
  } on NullThrownError {
    print('Age is Null');
  } 
  on NoSuchMethodError {
    print('Method is not available....');
  } 
  catch (e) {
    print('System has some error: ${e.toString()}');
  } finally {
    print('Complete');
  } */
  try {
    stdout.write('Please enter your age: \r\n');
    int age = int.tryParse(stdin.readLineSync());

    if(age == null) throw NullThrownError();

    if (age < 18) {
      throw Exception('Too young');
    } else if (age > 99) {
      throw Exception('Too old');
    }
  } on NullThrownError{
    print('You have input invalid age.');
  } 
  catch (e) {
    stdout.write(e.toString());
  }


}