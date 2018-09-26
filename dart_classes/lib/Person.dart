
class Person {

  String _name = '';

  Person(String name){
    print('Constructed');
    _name = name;
  }

  void eat() => print('I am eating');

  void sleep() {
    print('I am sleeoing');
  }

  void sayMyName(){
    if(_name.isEmpty){
      print('Hello');
    } else {
      print('Nice to meet you ${_name}');
    }
  }

}