void main() {
  Map product = {'name': "Blueband", 'price': 1000, "Quantity": 10};
  if (product['Quantity'] < 0) {
    print('Product is out of stock');
  } else {
    print('Product is in Stock');
  }
}
