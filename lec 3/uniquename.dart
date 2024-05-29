import 'dart:io';

void main()
{
  stdout.write("Enter size : ");
   int n=int.parse(stdin.readLineSync()!);

  List<String> name= [];

  stdout.write("Enter element here : ");
  for(int i=0;i<n;i++){

  String aname = stdin.readLineSync()!;
   name.add("$aname");
  }
  Set<String> nameofName = name.toSet();
  List<String> Name = nameofName.toList();

  print("uniqu elements : ");
  print(Name);



}