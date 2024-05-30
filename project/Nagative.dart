void main() {
  List<int> numbers = [11,25,55,-66,78,-6,-7,4,5,-56,-45];
  
  print("Negative elements:");
  for (int num in numbers) {
    if (num < 0) {
      print(num);
    }
  }
}
