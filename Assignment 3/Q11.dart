void main() {
  String pattern = '*';
  print(pattern);

  String word = pattern[0];
  for (int a = 0; a < 3; a++) {
    word = word + pattern;
    //1   *+* word **
    //2   **+*   word ***
    print(word);
  }
}
