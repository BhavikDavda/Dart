class Student {
  int? Roll_num;
  String? name;
  String? Course;

  Student({required this.Roll_num, required this.name, required this.Course});

  factory Student.fromRaw(Map<String, dynamic> data){
    return Student(Roll_num: data['Roll_num'], name: data['name'], Course: data['Course']);

  }
}