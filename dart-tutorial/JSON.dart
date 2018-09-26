import 'dart:convert';

void main() {

  String rawJson = '{"url": "http://hoangpvm.vn", "id": 1}';
  // var parsedJson = json.decode(rawJson);
  var parsedJson = jsonDecode(rawJson);
  // print(parsedJson['url']);
  //var imageModel = ImageModel(parsedJson['id'],parsedJson['url']);
  var imageModel = ImageModel.fromJson(parsedJson);

  print(imageModel.url);
}

class ImageModel{

  String url;
  int id;

  ImageModel(this.id,this.url);

  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }

}