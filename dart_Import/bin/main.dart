import 'package:dart_Import/dart_Import.dart' as dart_Import;

import 'package:http/http.dart';

main(List<String> arguments) {
  print('Hello world: ${dart_Import.calculate()}!');

  String url = 'http://google.com';

  get(url).then((response){
    print('Status Code: ${response.statusCode}');
    print('Body: ${response.body}' );
  });

}
