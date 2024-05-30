import 'dart:io';

void main() 
{
  List<int> array= [];

  while (true) 
  {
    print("\nMenu:");
    print("1. insert element");
    print("2. delete element");
    print("3. update element");
    print("4. view array");
    print("0. exit");

    stdout.write("Enter your choice: ");
    int choice= int.parse(stdin.readLineSync()!);

    switch (choice) 
    {
      case 1:
        {
          stdout.write("Enter the insert: ");
          int element= int.parse(stdin.readLineSync()!);
          array.add(element);
          print("Element $element inserted successfully.");
        }
        break;

      case 2:
        {
          if (array.isEmpty) 
          {
            print("Array is null. not delete.");
            break;
          }

          print("Array elements:");
          for (int i=0; i<array.length; i++) 
          {
            print("$i: ${array[i]}");
          }

          stdout.write("Enter the index element delete: ");
          int index = int.parse(stdin.readLineSync()!);

          if (index<0 || index>= array.length) 
          {
            print("Invalid index!");
            break;
          }

          int deletedElement= array.removeAt(index);
          print("Element at index $index ($deletedElement) deleted successfully.");
        }
        break;

      case 3:
        {
          if (array.isEmpty) 
          {
            print("Array is null. not update.");
            break;
          }

          print("Array elements:");
          for (int i = 0; i < array.length; i++) 
          {
            print("$i: ${array[i]}");
          }

          stdout.write("Enter the element update: ");
          int updateIndex = int.parse(stdin.readLineSync()!);

          if (updateIndex<0 || updateIndex>= array.length) 
          {
            print("Invalid index!!!");
            break;
          }

          stdout.write("Enter the new value: ");
          int newValue = int.parse(stdin.readLineSync()!);
          array[updateIndex] = newValue;
          print("Element at index $updateIndex updated to $newValue successfully.");
        }
        break;

      case 4:
        {
          if (array.isEmpty) 
          {
            print("Array is empty.");
            break;
          }

          print("Array elements:");
          for (int i= 0; i< array.length; i++) 
          {
            print("$i: ${array[i]}");
          }
        }
        break;
     
      default:
        print("Invalid choice!");
    }
  }
}
