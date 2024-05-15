import 'dart:io';

void main(){

  print("Enter the number:- ");
  int i = int.parse(stdin.readLineSync()!);

  if(i%2==0){
    print("The number is even");
  }
  else{
    print("The number is odd");
  }
}