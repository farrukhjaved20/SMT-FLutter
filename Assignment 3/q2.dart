void main() {
  int n1 = 0, n2 = 1, n3;
  List fabioncii = [];
  for (int i = 0; i < 7; i++) {
    n3 = n1 + n2;
    fabioncii.add(n1);
    n1 = n2;
    n2 = n3;
  }
  print(fabioncii);
}
