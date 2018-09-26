//import 'package:dart_poly/animal.dart';
import 'animal.dart';

class Mamal extends Animal {

  bool hasHair = true;
  bool hasBackbone =true;
  bool isWarmBlood = true;

  void walk() => print('I am walking...');

  void eat(){
    print('Mamal is eating');
  }

}