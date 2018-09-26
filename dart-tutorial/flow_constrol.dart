main(List<String> args) {
  int num = 20;
  //int num = 21;
  print('Starting....');
  assert(num == 20);
  print('Finished...');


  List<String> names = ['Pham', 'Vu', 'Minh', 'Hoang'];
  names.forEach((String name) => print(name));

  names.forEach((String person) {
    print(person);
  });

  for (int i=1; i <=10; i++) {
    print(i);
    if(i == 5){
      print('half way there');
    }
  }
}