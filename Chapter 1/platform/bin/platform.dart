import 'dart:io';

Map env = Platform.environment;

void main() {
  print('We run from this VM: ${Platform.executable}');
    // getting the OS and Dart version:
  print('Our OS is: ${Platform.operatingSystem}');
  print('We are running Dart version: ${Platform.version}');
  if (!Platform.isLinux) {
    print('We are not running on Linux here!');
  }
  // getting the number of processors:
  int noProcs = Platform.numberOfProcessors;
  print('no of processors: $noProcs');
  // getting the value of environment variables from the Map env:
  print('OS = ${env["OS"]}');
  print('HOMEDRIVE = ${env["HOMEDRIVE"]}');
  print('USERNAME = ${env["USERNAME"]}');
  print('PATH = ${env["PATH"]}');
  // getting the path to the executing Dart script:
  var path = Platform.script.path;
  print('We execute at $path');
  String exec = Platform.executable;
  List<String> flags = Platform.executableArguments;
  Uri    script = Platform.script;
  print("exec=$exec");
  print("flags=$flags");
  print("script=$script");
  // on this OS we use this path separator:
  print('path separator: ${Platform.pathSeparator}');
}
