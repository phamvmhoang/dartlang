import 'package:dart_poly/feline.dart';
import 'package:dart_poly/dragon.dart';
import 'package:dart_poly/ghost.dart';

class Monster extends Feline with Ghost, Dragon{


  @override
  void eat() {
    print('Monster is eating');
    super.eat();
  }
}