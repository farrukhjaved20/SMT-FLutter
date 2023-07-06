void main() {
  Map user = {'name': "Farrukh", "isAdmin": true, "isActive": true};
  //user.
  if (user['isAdmin'] == true && user['isActive'] == true) {
    print('Active Admin');
  } else {
    print('Not Active admin');
  }
}
