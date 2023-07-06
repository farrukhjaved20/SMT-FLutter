import 'dart:io';

void main() {
  var temp;

  print("Enter Temperature in Degree Celsius:");
  temp = double.parse(stdin.readLineSync()!);

  temp = (temp * 9 / 5) + 32;

  print("The temperature is $temp in Fahrenheit:");
}
