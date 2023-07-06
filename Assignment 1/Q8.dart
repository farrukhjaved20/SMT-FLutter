void main() {
  String studentName = "Ali";
  int rollNo = 1234;
  String className = "10th";
  int compMarks = 20;
  int engMarks = 55;
  int urduMarks = 60;
  int mathsMarks = 95;
  int chemMarks = 62;
  int totalMarks;
  String grade;

  String percent;

  totalMarks = compMarks + engMarks + urduMarks + mathsMarks + chemMarks;

  double percentage = (totalMarks / 500) * 100;
  percent = percentage.toStringAsFixed(2);

  if (percentage >= 90) {
    grade = "A+";
  } else if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else if (percentage >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  print("----- Student Marksheet -----");
  print("Student Name: $studentName");
  print("Roll Number: $rollNo");
  print("Class: $className");
  print("-----------------------------");
  print("Computer Science: $compMarks");
  print("Chemistry: $chemMarks");
  print("Mathematics: $mathsMarks");
  print("English Language: $engMarks");
  print("Urdu Language: $urduMarks");
  print("-----------------------------");
  print("Total Marks: $totalMarks");
  print("Percentage: $percent");
  print("Grade Obtained: $grade");
}
