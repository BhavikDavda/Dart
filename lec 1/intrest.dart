import 'dart:io';

void main() {
  stdout.write("Enter principal value: ");
  int p = int.parse(stdin.readLineSync()!);

  stdout.write("Enter rate of interest: ");
  int r = int.parse(stdin.readLineSync()!);

  stdout.write("Enter time period: ");
  int t = int.parse(stdin.readLineSync()!);

  print("Simple interest= ${(p * r * t) / 100}");
}
