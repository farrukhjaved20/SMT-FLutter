void main() {
  List<int> values = [10, 20, 30, 40, 50, 60, 70];
  int n = 3;

  List<int> newList = values.take(n).toList();

  print(newList);
}
