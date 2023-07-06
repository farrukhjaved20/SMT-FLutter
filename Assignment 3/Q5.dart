void main() {
  int i = 0;
  int sum = 0;

  while (i < 5) {
    i++;

    ///i=1
    ///i=2
    ///i=3
    ///i=4
    ///i=5
    //sum += i;
    sum = sum + i;
    ////0+1 =1 sum
    ///1+2=3 sum
    ///3+3=6 sum
    ///6+4=10 sum
    ///10+5=15 sum
  }

  print(sum);
}
