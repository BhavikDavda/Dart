import 'dart:io';

void main(){

  stdout.write("Enter the value:- ");
  int a= int.parse(stdin.readLineSync()!);

  List<int> number = [];
  List<String> name= [];

  for(int i=0; i<a; i++){
  
    number.add(int.parse(stdin.readLineSync()!));
  }


  for(int i=0; i<a; i++){

    name.add("${number[i]} hello");
  }

    print(name);





}