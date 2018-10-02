import 'dart:io';
import 'dart:async';

int count = 0;

main(List<String> arguments) {
  //demoCallback();
  //demoFuture();
  demoAwait();
}

void demoAwait() async {
  print('Starting....');
  File file = await appendFile();
  print('Append to file ${file.path}');
  print('Ending .....');
}

Future<File> appendFile(){
  File file = File(Directory.current.path + '/tmp.txt');
  DateTime now = DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.append);
}

void demoFuture(){
  String path = Directory.current.path + '/tmp.txt';
  print('Append to ${path}');

  File file = File(path);

  Future<RandomAccessFile> f = file.open(mode: FileMode.append)
    .then((RandomAccessFile rdf){
    print('File has been opened');
      rdf.writeString('Hello World\n')
          .then((value){
            print('File has been appended');
          })
          .catchError((e) => print('Error: $e') )
          .whenComplete(()=> rdf.close());
    }
  );

  print('-------End of process ------');

}

void demoCallback(){
  Duration duration = Duration(seconds: 1);
  Timer timer = Timer.periodic(duration, timeout);
  print('Started at: ${getTime()}');
}

void timeout(Timer timer){
  print('Timeout: ${getTime()}');
  count++;
  if(count >= 5) timer.cancel();

}

String getTime() {
  DateTime dateTime = DateTime.now();
  return dateTime.toString();
}
