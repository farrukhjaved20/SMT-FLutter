void main() {
  List number = [-1, -2, 4, 9, -1, 3, 5];
  var positive = number.where((element) => element >= 0);
  print(positive.toList());
}
