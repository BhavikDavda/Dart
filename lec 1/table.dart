import 'dart:io';

void main(){

  print("Enter the number:-");
  int n = int.parse(stdin.readLineSync()!);

  

  for(int i=1; i<=10; i++)
  {
    print("$n x $i :-${n*i}");
  }

}