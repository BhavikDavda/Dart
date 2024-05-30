void main() 
{
  List<int> numbers= [25,26,50,40,80,99,79,1,2,4,6];
  
  int largest= numbers[0]; 
  
  for (int i=1; i<numbers.length; i++) 
  {
    if (numbers[i]>largest)
    {
      largest = numbers[i];
    }
  }
  
  print("largest number in array:- $largest");
}
