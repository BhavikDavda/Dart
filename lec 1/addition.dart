import 'dart:io';


void main(){
  stdout.write("enter a value of i=");
  int i = int.parse(stdin.readLineSync()!);

  stdout.write("enter a value of j=");
  int j=int.parse(stdin.readLineSync()!);
  
  print("addition = ${i+j}");
}