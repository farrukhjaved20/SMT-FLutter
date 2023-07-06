void main() {
  // The map function returns a lazy Iterable,
  //which is created by calling the specified function on each element of an Iterable
  List<int> originalList = [10, 20, 30, 40, 50];
  List<int> squaredList = originalList.map((value) => value * value).toList();

  print(squaredList);
}
