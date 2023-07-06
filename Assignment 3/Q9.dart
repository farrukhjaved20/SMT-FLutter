void main() {
  String palindrome = 'radar';
  String word1 = palindrome[0];
  String word2 = palindrome[palindrome.length - 1];
  while (word1 == word2) {
    print('Given String is $palindrome');
    break;
  }
}
