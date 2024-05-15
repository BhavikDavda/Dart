import 'dart:io';

void main(){

  print("Enter the value:- ");
  int i = int.parse(stdin.readLineSync()!);

  print("cube is = ${i*i*i}");
}