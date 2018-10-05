import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';
import 'package:pointycastle/digests/sha256.dart';


main(List<String> arguments) {

  //hashingData('Hello');
  encryptePassword('hoangpvm');

}

void encryptePassword(String input) {

  var salt = Uint8List.fromList(utf8.encode('salt'));
  var pcks = KeyDerivator("SHA-1/HMAC/PBKDF2");
  var param = Pbkdf2Parameters(salt, 100, 16);

  pcks.init(param);

  Uint8List key = pcks.process(Uint8List.fromList(utf8.encode(input)));

  display('Key Value', key);

}

void display(String title, Uint8List value) {
  print(title);
  print(value);
  print(base64.encode(value));
}

void hashingData(String input) {

  Digest digest = SHA256Digest();
  //Digest digest = Digest('SHA-256');

  Uint8List data = Uint8List.fromList(utf8.encode(input));
  Uint8List hashing = digest.process(data);
  print('Hasing without encode: $hashing');
  print('Hasing with encode: ${base64.encode(hashing)}');

}
