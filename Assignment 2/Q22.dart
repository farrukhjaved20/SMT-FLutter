void main() {
  Map shoppingcart = {'Productname': "Apple", "Quantities": 0};

  if (shoppingcart.containsValue('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }
}
