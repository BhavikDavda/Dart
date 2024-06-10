
import 'student.dart';

void main(){


  List<Map<String,dynamic>> studentData = [
    {
      'Roll_num': 1,
      'name': "bhavik",
      'Course': "Flutter",
    },
        {
      'Roll_num': 2,
      'name': "Mohit",
      'Course': "Flutter",
    },
        {
      'Roll_num': 3,
      'name': "Bhavy",
      'Course': "Flutter",
    },
    {
      'Roll_num': 4,
      'name': "Vishal",
      'Course': "Futter",
    },
    {
      'Roll_num': 5,
      'name': "Darshan",
      'Course': "Futter",
    },
    {
      'Roll_num': 6,
      'name': "Krishna",
      'Course': "Futter",
    },
    {
      'Roll_num': 7,
      'name': "Utsavi",
      'Course': "Futter",
    },
    {
      'Roll_num': 8,
      'name': "Devangi",
      'Course': "Futter",
    },
    {
      'Roll_num': 10,
      'name': "Vraj",
      'Course': "Futter",
    },
    {
      'Roll_num': 11,
      'name': "Aman",
      'Course': "Futter",
    },
    {
      'Roll_num': 12,
      'name': "Bhargav",
      'Course': "Futter",
    },
    {
      'Roll_num': 13,
      'name': "Jeet",
      'Course': "Futter",
    },
    {
      'Roll_num': 14,
      'name': "Dhaval",
      'Course': "Futter",
    },
    {
      'Roll_num': 15,
      'name': "Arjun",
      'Course': "Futter",
    },
    {
      'Roll_num': 16,
      'name': "Styajit",
      'Course': "Futter",
    },
    {
      'Roll_num': 17,
      'name': "Manav",
      'Course': "Futter",
    },
    {
      'Roll_num': 18,
      'name': "Ronak",
      'Course': "Futter",
    },
    {
      'Roll_num': 19,
      'name': "Magan",
      'Course': "Futter",
    },
    {
      'Roll_num': 20,
      'name': "Chhagan",
      'Course': "Futter",
    },
    {
      'Roll_num': 21,
      'name': "Vivek",
      'Course': "Futter",
    },
    {
      'Roll_num': 22,
      'name': "Naitik",
      'Course': "Futter",
    },
    {
      'Roll_num': 23,
      'name': "Omdev",
      'Course': "Futter",
    },
    {
      'Roll_num': 24,
      'name': "Rajdeep",
      'Course': "Futter",
    },
    {
      'Roll_num': 25,
      'name': "kartik",
      'Course': "Futter",
    },
    {
      'Roll_num': 26,
      'name': "Hardik",
      'Course': "Futter",
    },
    {
      'Roll_num': 27,
      'name': "janak",
      'Course': "Futter",
    },
    {
      'Roll_num': 28,
      'name': "Chairag",
      'Course': "Futter",
    },
    {
      'Roll_num': 29,
      'name': "Mhavir",
      'Course': "Futter",
    },
    {
      'Roll_num': 30,
      'name': "Sunil",
      'Course': "Futter",
    },
    
    
  ];

  List<Student> allStudent =[];

  studentData.forEach((Map<String,dynamic> data){
    allStudent.add(Student.fromRaw(data));

  });

  allStudent.forEach((Student data){
    print(data.Roll_num );
    print(data.name);
    print(data.Course);
  });
}