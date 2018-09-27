class Counter <T extends num> {

  List<T> _items;

  Counter(){
    _items = List<T>();
  }

  void addAll(Iterable<T> items) => _items.addAll(items);

  void add(T item) => _items.add(item);

  void elementAt(int index) => _items.elementAt(index);

  void total (){
    num total = 0;
    _items.forEach((item){
      total += item;
    });
    print('Totsal: $total');
  }

}