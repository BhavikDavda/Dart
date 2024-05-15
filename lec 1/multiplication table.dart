import 'dart:io';

void main() {
  print("Enter the number: ");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter the number: ");
  int n2 = int.parse(stdin.readLineSync()!);

  for (int i=n1; i<=n2; i++) {

    print("\nMultiplication table for $i:");

    for (int j=1; j<=10; j++) {

      print("$i x $j = ${i*j}");

    }
  }
}
