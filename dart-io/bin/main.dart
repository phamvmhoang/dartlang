import 'dart:io';

main(List<String> arguments) {
  //syncSample();
  //systemFileTmp();
  listInfoCurrentDirectory();
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
