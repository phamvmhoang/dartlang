import "dart:html";
import "dart:async";

void main() {
  
  final InputElement input = querySelector('input');
  final DivElement div = querySelector('div');

  final emailValidator = StreamTransformer.fromHandlers(
  	handleData: (inputValue, sink) {
      if(inputValue.contains('@')){
        print('valid');
        sink.add(inputValue);
      } else {
        print('invalid');
        sink.addError('Enter invalid email');
      }
    }
  );
  
  input.onInput
    .map((dynamic event) => event.target.value)
    .transform(emailValidator)
    .listen(
  		(inputValue) => div.innerHtml='',
    	onError: (err) => div.innerHtml = err
  	);
  
}
