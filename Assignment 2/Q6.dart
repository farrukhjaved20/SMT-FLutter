void main() {
  Map world = {
    'Countries': [
      {
        "Pakistan": {
          "capitalCity": "Karachi",
          "Currency": "Pakistani Rupees",
          'Language': "Urdu"
        }
      },
      {
        "India": {
          "capitalCity": "Delhi",
          "Currency": 'Indian Rupee',
          'Language': "Hindi"
        }
      },
      {
        "USA": {
          "capitalCity": "Washington DC",
          "Currency": 'Dollar',
          'Language': "English"
        }
      },
    ]
  };
  print(world['Countries'][0]['Pakistan']['capitalCity']);
  print(world['Countries'][0]['Pakistan']['Currency']);
}
