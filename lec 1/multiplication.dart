import 'dart:io';

void main(){

  stdout.write("Enter the value of i= ");
  int i = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of i= ");
  int j = int.parse(stdin.readLineSync()!);


  print("multiplication= ${i*j}");
}

