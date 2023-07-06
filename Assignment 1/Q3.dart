void main() {
  int Number_of_classes_held = 16;
  int Number_of_classes_attended = 10;
  //attendance strength kitni hoi phir divided by class ki total strenth total sari
  double attending_percetange =
      Number_of_classes_attended / Number_of_classes_held * 100;

  print('$attending_percetange%');
  if (attending_percetange < 75) {
    print('Student is not allowed to sit in exam');
  } else {
    print('Student is allowed to sit in exam');
  }
}
