import 'dart:io' show stdin, stdout, exit;

void main() {
  stdout.write("Enter a number: ");
  final int number;

  try {
    number = int.parse(stdin.readLineSync()!);
  } on FormatException {
    print("Please input a valid Intger!");
    exit(1);
  }

  for (int i = 1; i <= 10; ++i) {
    print("$number x $i = ${number * i}");
  }

}