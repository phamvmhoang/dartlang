import 'package:dart_generics/counter.dart';


main(List<String> arguments) {
  List<int> numbers = List<int>();
  numbers.add(1);
  numbers.add(4);
  numbers.add(2);
  numbers.add(3);
  print('Numbers: $numbers');

  List<String> strings = List<String>();
  strings.addAll(['a','b','c']);
  print('Strings: $strings');

  // call generic method
  add(1, 3);
  add(1.2, 3.3);
  add('A','B');

  // call generic method
  addNumber(1, 3);
  addNumber(1.2, 3.3);
  //addNumber('A','B');

  List<int> values = [1,2,3,4,5];
  num sum = addAll(0,values);
  print(sum);

  Counter counter = Counter();
  counter.addAll(numbers);
  counter.add(10);
  counter.total();

}

void add <T> (T a, T b) {
  print(a.toString() + b.toString());
}

void addNumber <T extends num> (T a, T b) {
  print(a.toString() + b.toString());
}

T addAll<T extends num> (T base, List<T> values){
  T result = base;
  values.forEach((value){
    result+= value;
  });
  return result;
}

