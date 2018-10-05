import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart';

main(List<String> arguments) {

  //simpleSocketServer();
  //httpGet();
  //httpPost();
  udpServer();

}

void udpServer() {

  String msg = 'Hello Dart';
  List<int> sendData = utf8.encode(msg);
  int port = 3000;

  //server
  RawDatagramSocket.bind( InternetAddress.loopbackIPv4,port )
    .then((RawDatagramSocket rawDatagramSocket){
      rawDatagramSocket.listen((RawSocketEvent rawSocketEvent){
        if(rawSocketEvent == RawSocketEvent.read ){
          Datagram dg = rawDatagramSocket.receive();
          print('Data: ${utf8.decode(dg.data)}');
        }
      });
    //client
    rawDatagramSocket.send(sendData,InternetAddress.loopbackIPv4,port);
    print('Sent');
  });


}

void httpPost() async{
  String url = 'http://httpbin.org/post';
  Response response = await post(url, body: 'name=hoang&age=34');
  print(response.statusCode);
  print(response.body);

}

void httpGet () async{
  String url = 'https://google.com';
  Response response = await get(url);
  print(response.statusCode);
  print(response.body);

}

void simpleSocketServer() async {

  ServerSocket serverSocket = await  ServerSocket.bind('127.0.0.1', 8888);
  print('Socket is listening.....');

  await for(var socket in serverSocket){
    socket.listen((List<int> data){
      print('${socket.remoteAddress}:${socket.remotePort} - data: ${utf8.decode(data)}');
    });

  }



}
