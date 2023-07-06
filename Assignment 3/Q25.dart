void main() {
  List<int> numbers = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> primeNumbers = [];
  bool isPrime = true;

  for (var num in numbers) {
    //this conditon works due to in operator num int numbers ke andr use hoga range noe kehte se
    //num in numbers ke values ajaenge 4 7 10 agr string hota tw jese class men bilal taber the wo ajata num men
    //index change hota rahega
    for (int a = 2; a <= num ~/ 2; a++) {
      ///1...2   2<=2 true
      ///2...2   3<=4 true
      ///3...2   4<=5 true
      if (num % a == 0) {
        ///1....4%2  true
        ///2.....7%2 false
        ///3.....10%2 true
        isPrime = false;
        break;
      }
      isPrime = true;
    }
    //print('object');
    if (isPrime) {
      primeNumbers.add(num);
    }
  } //for loop end
  print("Prime numbers: $primeNumbers");
}
