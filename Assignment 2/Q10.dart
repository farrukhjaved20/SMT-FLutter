void main() {
  List<String> cats = ['mano', 'tom', 'billy', 'tiny', 'mano', 'tiny'];

  List uniqueStrings = cats.toSet().toList();

  print(uniqueStrings);
}
