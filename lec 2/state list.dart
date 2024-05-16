import 'dart:io';

void main() {
  List<String> indianStates = [];

  print("Enter Indian states:");
  while (true) {
    String state = stdin.readLineSync()!;
    
    indianStates.add(state);
  }

  print("\nList of Indian States:");
  for (String state in indianStates) {
    print(state);
  }
}