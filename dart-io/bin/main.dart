import 'dart:io';

main(List<String> arguments) {
  //syncSample();
  //systemFileTmp();
  //listInfoCurrentDirectory();
  File file = createFile('tmp.txt');
  writeFile(file);
  readFile(file);
  deleteFile(file);
}

File createFile(String fileName) {
  Directory directory = Directory.current;
  File file = File('${directory.path + '/' + fileName}');
  return file;
}

void readFile(File file) {
  if(file.existsSync()){
    print('Reading String ......');
    print(file.readAsStringSync());

    print('Reading Bytes ......');
    List<int> values = file.readAsBytesSync();
    values.forEach((value){
      print(values);
    });



  } else {
    print('File Not Found');
  }
}

void writeFile(File file) {
  RandomAccessFile randomAccessFile = file.openSync(mode: FileMode.append);
  randomAccessFile.writeStringSync('Hello World \r\n How are you today');
  randomAccessFile.flushSync();
  randomAccessFile.close();
}

void deleteFile(File file){
  if(file.existsSync()){
    file.deleteSync();
  } else {
    print('File not found');
  }
}

void listInfoCurrentDirectory() {
  Directory directory = Directory.current;
  print('Current Path: ${directory.path}');

  List<FileSystemEntity> list = directory.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  list.forEach((item){
    FileStat fileStat = item.statSync();
    print('Path: ${item.path}');
    print('Type: ${fileStat.type}');
    print('Size: ${fileStat.size}');
    print('');
  });


}

void systemFileTmp() {
  Directory directory = Directory.systemTemp.createTempSync();
  if(directory.existsSync()){
    print('Removing directory: ${directory.path}}');
    directory.deleteSync();

  } else {
    print('Could not found ${directory.path}');
  }

}

void syncSample(){
  String path = '/';
  Directory directory = Directory(path);
  if(directory.existsSync()){
    print('Existed');
  } else {
    print('Not found');
  }
}
