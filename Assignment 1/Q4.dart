void main() {
  int year = 2000;
  //modulas men jitna divisible hojaee wo jese class men 19/4 4 4 16 reminder 3
  //ese he yeaar divided krke remainder men zeros ajaein tw completely dividable hojae tw lear year ha
  num Leap_year = year % 4;
  if (Leap_year == 0) {
    print(" $year, is a leap year");
  }
}
