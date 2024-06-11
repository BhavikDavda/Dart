int sum({required List<int> numbers}) 
{
  int Sum = 0;
  numbers.forEach((number) 
  {
    Sum = number + number;
  }
  );
  return Sum;
}

void main() 
{
  List<int>numbers = [10, 15, 20, 25, 30, 35, 40, 45, 50];

  int sumOfAllElements = sum(numbers: numbers);

  print("The sum of all elements is: $sumOfAllElements");
}
