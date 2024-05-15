import 'dart:io';

void main()
{
  stdout.write("Enter of the number:");
  int n= int.parse(stdin.readLineSync()!);

  stdout.write("Enter of the number:");
  int m= int.parse(stdin.readLineSync()!);

  print("press 1 addition");
  print("press 2 subtraction");
  print("press 1 multiplication");
  print("press 1 division");

  int choice= int.parse(stdin.readLineSync()!);

  switch (choice){
    case 1:
      print("adition :- ${n+m}");
      break;

    case 2:
      print("subtraction:- ${n-m}");
      break;

    case 3:
      print("multiplication:- ${n*m}");
      break;
    case 4:
      print("divition:- ${n/m}");
      break;
    default:
      print("invalid choice...");
      
  }

}