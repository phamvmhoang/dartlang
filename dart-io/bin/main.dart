import 'dart:io';

main(List<String> arguments) {
  //syncSample();
  systemFileTmp();
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
