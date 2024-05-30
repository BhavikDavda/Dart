import 'dart:io';

void main() {
  List<List<int>> matrix= 
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  while (true) 
  {
    print("\nMenu:");
    print("1. Sum of all elements");
    print("2. Sum of row");
    print("3. Sum of column");
    print("4. Sum of diagonal elements");
    print("5. Sum of anti-diagonal elements");
    print("0. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) 
    {
      case 1:
        int sum= 0;

        for (int i= 0; i<matrix.length; i++) 
        {
          for (int j= 0; j<matrix[i].length; j++) 
          {
            sum += matrix[i][j];
          }
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
        stdout.write("Enter row number (0-2): ");
        int row = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < matrix[row].length; i++) 
        {
          sum += matrix[row][i];
        }
        print("Sum of row $row: $sum");
        break;

      case 3:
        stdout.write("Enter column number (0-2): ");
        int column = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < matrix.length; i++) 
        {
          sum += matrix[i][column];
        }
        print("Sum of column $column: $sum");
        break;

      case 4:
        int sum = 0;
        for (int i = 0; i < matrix.length; i++) 
        {
          sum += matrix[i][i];
        }
        print("Sum of diagonal: $sum");
        break;

      case 5:
        int sum = 0;
        for (int i = 0; i<matrix.length; i++) 
        {
          sum += matrix[i][matrix.length - 1 - i];
        }
        print("Sum of anti-diagonal: $sum");
        break;

      default:
        print("Invalid choice!");
    }
  }
}
