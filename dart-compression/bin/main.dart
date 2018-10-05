import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart';

main(List<String> arguments) {
  //compressData();
  //gzipvszlip();
  zipFile();
}

void zipFile() {
  List<String> listFiles = List();

  Directory.current.listSync().forEach((FileSystemEntity fse){
    if(fse.statSync().type == FileSystemEntityType.file){
      listFiles.add(fse.path);
    }
  });
  print('Length: ${listFiles.length}');
  String zipFile = Directory.current.path + '/tmp.zip';
  String unzipPath = Directory.current.path + '/tmpdir';
  zip(listFiles, zipFile);
  unzip(zipFile, unzipPath);
}

void zip(List<String> files, String file){
  Archive archive = Archive();
  files.forEach((String filePath){
    File file = File(filePath);
    ArchiveFile archiveFile = ArchiveFile(basename(filePath), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archiveFile);
  });

  ZipEncoder zipEncoder = ZipEncoder();
  File f = File(file);
  f.writeAsBytesSync(zipEncoder.encode(archive));

  print('compressed');

}

void unzip(String zip, String path){
  File file = File(zip);

  Archive archive = ZipDecoder().decodeBytes(file.readAsBytesSync());

  archive.forEach((ArchiveFile archiveFile){
    File newFile = File(path + '/' + archiveFile.name);
    newFile.createSync(recursive: true);
    newFile.writeAsBytesSync(archiveFile.content);
  });

  print('decompressed');
}

void gzipvszlip() {
  int gxziprs = testCompress(gzip);
  int zlibrs = testCompress(zlib);

  print('GZIP: ${gxziprs}');
  print('ZLIB: ${zlibrs}');


}

int testCompress(var codec){
  String data = generateData();
  List original = utf8.encode(data);
  List compressed = codec.encode(original);
  List decompress = codec.decode(compressed);

  print('Original: ${original.length} bytes');
  print('Vompressed: ${compressed.length} bytes');
  print('Decompress: ${decompress.length} bytes');

  String decode = utf8.decode(decompress);
  assert(decode == data);
  return compressed.length;
}

void compressData() {
  String data = generateData();
  List original = utf8.encode(data);
  List compressed = gzip.encode(original);
  List decompress = gzip.decode(compressed);

  print('Original: ${original.length} bytes');
  print('Vompressed: ${compressed.length} bytes');
  print('Decompress: ${decompress.length} bytes');

  String decode = utf8.decode(decompress);
  assert(decode == data);
}

String generateData(){
  String data = '';

  for(int i =0; i <= 1000; i++){
    data += 'Index of Item is $i';
  }
  return data;
}
