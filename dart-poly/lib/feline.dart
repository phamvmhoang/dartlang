import 'package:dart_poly/mamal.dart';

class Feline extends Mamal{

  bool hasClaws= true;

  void growl() => print('grrrrrr');

  @override
  void eat(){
    print('Feline is eating');
    super.eat();
  }

}