void main() {
  var number = 9;

  if (number % 2 == 0) {
    print("The number is even.");

    if (number % 5 == 0) {
      print("The number is divisible by 5.");
    } else {
      print("The number is not divisible by 5.");
    }
  } else {
    print("The number is odd.");

    if (number % 7 == 0) {
      print("The number is divisible by 7.");
    } else {
      print("The number is not divisible by 7.");
    }
  }
}
