void main() {
  int number = 4;
  for (int i = 1; i <= number; i++) {
    String sequence = '';
    for (int j = 0; j < i; j++) {
      sequence = sequence + i.toString();
    }
    print(sequence);
  }
}
