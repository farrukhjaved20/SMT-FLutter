void main() {
  List<Map<dynamic, dynamic>> usersEligibility = [
    {'name': 'Smith', 'eligible': true},
    {'name': 'Titanic', 'eligible': false},
    {'name': 'Olympic', 'eligible': true},
    {'name': 'Rose', 'eligible': true},
    {'name': 'Jack', 'eligible': false},
  ];

  usersEligibility.removeWhere((user) => user['eligible'] == false);
  print(usersEligibility);
}
