void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  //Iterables in Dart are a collection of values, or "elements", that we can access in a sequential manner
  List<int> evennumbers = List.of(numbers.where((element) => element % 2 == 0));
  print(evennumbers);
}
