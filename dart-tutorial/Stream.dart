import 'dart:async';

class Cake {

}

class Order {
  
  String type;

  Order(this.type);

}

void main () {

  final controller = StreamController();

  // final order = Order('Banana');
  final order = Order('Chocolate');


  final baker = StreamTransformer.fromHandlers(
    handleData: (cakeType, sink){
      if(cakeType == 'Chocolate'){
        sink.add(Cake());
      } else {
        sink.addError('I can not bake that type !!!');
      }
    }
  );

  controller.sink.add(order);

  controller.stream
    .map((order) => order.type)
    .transform(baker)
    .listen(
      (cake) => print('Here is your cake....'),
      onError: (error) => print(error) 
    );

}