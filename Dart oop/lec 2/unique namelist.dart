
List<String> getUniqueNames(List<String> names) 
{
  Set<String> uniqueSet = {};
  uniqueSet.addAll(names);
  return uniqueSet.toList();
}
void main() {
  List<String> names = ["mohit", "bhavik", "Bhavya", "raj", "parth", "raj"];
  
  
  List<String> uniqueNames = getUniqueNames(names);
  
  print("\nOriginal list of names: $names");
  print("\nUnique list of names: $uniqueNames");
}


