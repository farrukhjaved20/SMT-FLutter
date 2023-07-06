void main() {
  Map car = {'brand': 'Toyota', "Color": 'Red', "isSedan": true};
  if (car['isSedan'] == false && car['Color'] == 'Red') {
    print('Match');
  } else {
    print('No Match');
  }
}
