import 'dart:io';

class Distance{
  int feet;
  int inches;
  
  Distance(this.feet, this.inches);

  void distanceConvert(){
    int total= feet * 12 + inches;
    int feetConverted= total ~/ 12; 
    int inchesConverted= total % 12;
    print('$feetConverted feet and $inchesConverted inches');
  }
}

void main(){
  stdout.write('Enter feet: ');
  int feet= int.parse(stdin.readLineSync()!);

  stdout.write('Enter inches: ');
  int inches= int.parse(stdin.readLineSync()!);

  Distance converter= Distance(feet, inches);
  converter.distanceConvert();
}
