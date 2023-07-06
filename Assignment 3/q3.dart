void main() {
  int num = 17;
  bool isPrime = true;
  for (int a = 2; a <= num ~/ 2; ++a) {
    if (num % a == 0) {
      ///17 /2=
      isPrime = false;
      break;
    }
    isPrime = true;
  }

  if (isPrime) {
    print("$num is a prime number");
  } else {
    print("$num is not a prime number");
  }
}
