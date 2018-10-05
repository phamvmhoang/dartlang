import 'dart:io';
import 'dart:convert';

void main() async {

  Socket socket = await Socket.connect('127.0.0.1', 8888);
  print('Connected');
  socket.write('From Client');
  await socket.close();
  print('Closed');

}