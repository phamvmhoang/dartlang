import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {
  //  displayOSInfo();
  //listFiles();
  processCommunication();
}

void processCommunication() {
  Process.start('cat', []).then((Process process){
    process.stdout.transform(utf8.decoder).listen((data) => print(data));

    process.stdin.writeln('Hello Dart....');
    Process.killPid(process.pid);

    process.exitCode.then((value){
      print('Exit Code: $value');
      exit(0);
    });
  });
}

void listFiles() {

  Process.run('ls', ['-la']).then((ProcessResult rs){
    print(rs.stdout);
    print('Exit Code: ${rs.exitCode}');
  });

}

void displayOSInfo(){
  print('OS: ${Platform.operatingSystem} ${Platform.operatingSystemVersion} ${Platform.version}');

  if(Platform.isMacOS) {
    print('You are running MacOS');
  } else {
    print('You are not running MacOS');
  }

  print('Path: ${Platform.script.path}');
  print('Dart: ${Platform.executable}');

  print('ENV: ');
  Platform.environment.keys.forEach((key){
    print('Key: ${key} - value: ${Platform.environment[key]}');
  });
}
