import 'dart:io';

  int Addition(int num1, int num2) 
  {
    return num1 + num2;
  }

  int Subtraction(int num1, int num2) 
  {
    return num1 - num2;
  }

  int Multiplycation(int num1, int num2) 
  {
    return num1 * num2;
  }

  double Divison(int num1, int num2) 
  {
    return num1 / num2;
}

void main() 
{
  while(true)
  {
    stdout.write("Enter first number: ");
    int num1 = int.parse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    int num2 = int.parse(stdin.readLineSync()!);

    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplycation");
    print("4. Divison");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) 
    {
      case 1:
        int result = Addition(num1, num2);
        print("Result: $num1 + $num2 = $result");
        break;

      case 2:
        int result = Subtraction(num1, num2);
        print("Result: $num1 - $num2 = $result");
        break;

      case 3:
        int result = Multiplycation(num1, num2);
        print("Result: $num1 * $num2 = $result");
        break;

      case 4:
      double result = Divison(num1, num2);
        print("Result: $num1 / $num2 = $result");
        break;
        
      default:
        print("Invalid choice");
        break;
    }
  }
}