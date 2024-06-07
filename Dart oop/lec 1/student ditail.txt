import 'dart:io';

class Student 
{
  int student_id;
  String student_name;
  int student_age;
  String student_std;
  String student_mobile;

  Student(this.student_id, this.student_name, this.student_age, this.student_std, this.student_mobile);

  String studentDetails() 
  {
    return 'ID: $student_id, Name: $student_name, Age: $student_age, Standard: $student_std, Mobile: $student_mobile';
  }
}

class StudentManager 
{
  List<Student> students = [];

  void addStudent() 
  {
    print('Enter Student ID:');
    int student_id = int.parse(stdin.readLineSync()!);

    print('Enter Student Name:');
    String student_name = stdin.readLineSync()!;

    print('Enter Student Age:');
    int student_age = int.parse(stdin.readLineSync()!);

    print('Enter Student Standard:');
    String student_std = stdin.readLineSync()!;

    print('Enter Student Mobile:');
    String student_mobile = stdin.readLineSync()!;

    students.add(Student(student_id, student_name, student_age, student_std, student_mobile));
    print('Student added successfully.');
  }

  void getStdViseData() 
  {
    print('Enter the Standard to search:');
    String std = stdin.readLineSync()!;

    for (int i = 0; i < students.length; i++) 
    {
      if (students[i].student_std == std) 
      {
        print(students[i].studentDetails());
      }
    }
  }

  void getIdViseData() 
  {
    print('Enter the Student ID to search:');
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < students.length; i++) 
    {
      if (students[i].student_id == id) 
      {
        print(students[i].studentDetails());
        return;
      }
    }
    print('Student ID not found.');
  }

  void editStudent() 
  {
    print('Enter the Student ID to edit:');
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < students.length; i++) 
    {
      if (students[i].student_id == id) 
      {
        print('Enter new Student Name:');
        students[i].student_name = stdin.readLineSync()!;

        print('Enter new Student Age:');
        students[i].student_age = int.parse(stdin.readLineSync()!);

        print('Enter new Student Standard:');
        students[i].student_std = stdin.readLineSync()!;

        print('Enter new Student Mobile:');
        students[i].student_mobile = stdin.readLineSync()!;

        print('Student details updated successfully.');
        return;
      }
    }
    print('Student ID not found.');
  }

  void deleteStudent() 
  {
    print('Enter the Student ID to delete:');
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < students.length; i++) 
    {
      if (students[i].student_id == id) 
      {
        students.removeAt(i);
        print('Student deleted successfully.');
        return;
      }
    }
    print('Student ID not found.');
  }

  void menu() 
  {
    while (true) 
    {
      print('\nMenu:');
      print('Press 1 to get StdVise Data');
      print('Press 2 to get IdVise Data');
      print('Press 3 to insert Student Data');
      print('Press 4 to edit the Student Details');
      print('Press 5 to delete Student Data');
      print('Press 0 to Exit');

      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) 
      {
        case 1:
          getStdViseData();
          break;

        case 2:
          getIdViseData();
          break;

        case 3:
          addStudent();
          break;

        case 4:
          editStudent();
          break;

        case 5:
          deleteStudent();
          break;

        case 0:
          return;

        default:
          print('Invalid choice. Please try again.');
      }
    }
  }
}

void main() 
{
  StudentManager manager = StudentManager();
  manager.menu();
}