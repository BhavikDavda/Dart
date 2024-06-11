void main() 
{
  String input = "Bhavik"; 
  try 
    {
      int number = int.parse(input);
      print("The number is: $number");
    } 
  catch (FormatException) 
    {
      print("Invalid input format...!!");
    } 
  finally 
    {
      print("thanks for visit...");
    }
}