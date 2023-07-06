void main() {
  Map person = {
    "name": "John",
    "age": 15,
    "isStudent": true,
  };

  if (person["isStudent"] == true && person["age"] > 18) {
    print("Eligible");
  } else {
    print("Not eligible");
  }
}
