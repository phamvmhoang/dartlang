class Aninmal {

  static int _counter = 0;

  Aninmal(){
    _counter++;
    print('Counter: $_counter');
  }

  void running(){
    print('I am running..');
  }
}

main(List<String> args) {
  Aninmal one = Aninmal();
  Aninmal two = Aninmal();
  Aninmal thrree = Aninmal();
  Aninmal four = Aninmal();
  one.running();

}