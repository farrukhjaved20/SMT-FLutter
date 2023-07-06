void main() {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List evennumbers = [];
  for (int a = 0; a < numbers.length; a++) {
    if (numbers[a] % 2 == 0) {
      evennumbers.add(numbers[a]);
    }
  }
  print(evennumbers);
}
