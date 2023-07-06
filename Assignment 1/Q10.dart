import 'dart:io';

void main() {
  print('Enter three numbers:');

  int number1 = int.parse(stdin.readLineSync()!);
  int number2 = int.parse(stdin.readLineSync()!);
  int number3 = int.parse(stdin.readLineSync()!);

  int smallest = number1;
  if (number2 < smallest) {
    smallest = number2;
  }
  if (number3 < smallest) {
    smallest = number3;
  }
  print('Smallest value: $smallest');

  int greatest = number1;
  if (number2 > greatest) {
    greatest = number2;
  }
  if (number3 > greatest) {
    greatest = number3;
  }
  print('Greatest value: $greatest');
}
