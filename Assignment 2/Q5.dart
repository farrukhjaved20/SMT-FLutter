void main() {
  Map<String, String> contacts = {
    'name': 'Mohammad Ahmed',
    'phone': '1234567890',
    'address': 'abc road ',
    'email': 'faraz@yahoo.com',
    'city': 'karachi'
  };

  List<String> Length = List.of(contacts.keys.where((key) => key.length == 4));

  print(Length);
}
