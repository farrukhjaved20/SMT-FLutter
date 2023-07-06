void main() {
  List number = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  number.sort();
  for (int a = 8; a <= number.length; a++) {
    if (number[a] > a) {
      print(number[a]);
      break;
    }
  }
}
