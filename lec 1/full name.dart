import 'dart:io';

void main(){

  stdout.write("Enter first name:- ");
  String i = stdin.readLineSync()!;

  stdout.write("Enter last name :- ");
  String j = stdin.readLineSync()!;

  print("Full name is= ${i+j}");
}