class Factorial 
{
  
  int calculate(int n) => (n <= 1) ? 1 : n * calculate(n - 1);
}

void main() 
{
  
  Factorial factorial = Factorial();

  
  int number = 3;
  int result = factorial.calculate(number);
  
  print('The factorial of $number is $result');
}
