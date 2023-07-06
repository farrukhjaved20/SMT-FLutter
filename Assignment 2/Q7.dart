void main() {
  Map expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    print('fri exist ');
  } else {
    expenses.putIfAbsent('fri', () => 5000.0);
  }

  print(expenses);
}
