class Employee {

  String _name;
  String _position;

  Employee(String name, String position){
    _name = name;
    _position = position;
  }

  void introduce(){
    print('$_name is $_position');
  }


}