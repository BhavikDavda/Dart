import 'dart:io';

class Distance 
{
  int feet;
  int inches;

  Distance(this.feet, this.inches);

  void Distanceconvert() 
  {
    int total= feet*12 + inches;

    int Feet= total ~/ 12; 
    int Inches= total % 12;

    print('$Feet feet and $Inches inches');
  }
}

void main() 
{
  stdout.write('Enter feet: ');
  int feet= int.parse(stdin.readLineSync()!);

  stdout.write('Enter inches: ');
  int inches= int.parse(stdin.readLineSync()!);

  Distance converter = Distance(feet, inches);
  converter.Distanceconvert();
}