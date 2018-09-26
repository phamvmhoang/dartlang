import 'dart:convert';

import 'math_util.dart' as myCode;

main(List<String> args) {
  // print('Sum of 2 and 3 is : ${myCode.add(2,3)}');
  // encode my name
  String myName = 'Pham Vu Minh Hoang';
  List<int> ebytes = Utf8Encoder().convert(myName);
  String encodes = Base64Encoder().convert(ebytes);
  print('Encode String is : $encodes');

  // decode
  List<int> dbytes = base64.decode(encodes);
  String decode = utf8.decode(dbytes);
  print('Result of decode: ${decode}');


}