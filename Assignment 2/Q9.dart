void main() {
  List<int> numbers = [100, 8, 6, 10, 15, 14, 18, 24];
  int maxValue =
      numbers.reduce((value, element) => value > element ? value : element);

  print(maxValue);
}
