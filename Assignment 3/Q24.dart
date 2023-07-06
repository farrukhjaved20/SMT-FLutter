void main() {
  List negativenumbers = [-4, -6, -10, -12, -5];
  int number = negativenumbers.length;
  var average;
  num sum = 0;
  for (var a in negativenumbers) {
    if (a < 0) {
      sum = sum + a;
      //    0-4 =-4  sum -4/5
      average = sum / number;
    } else {
      print('$a has positive numbers');
    }
  }

  print(average);
}
