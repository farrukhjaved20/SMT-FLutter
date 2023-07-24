import 'dart:io';

List<Map<String, dynamic>> complaintss = [];

void main() {
  var isContinue = true;
  while (isContinue) {
    print(
        '****************************************************************************');
    print(
        '*                   STUDENT HELP DESK MANAGEMENT SYSTEM                    *');
    print(
        '****************************************************************************');

    print(
        '--------------------------------Login--------------------------------------');
    print(
        '----------------------------1.As a Student---------------------------------');
    print(
        '----------------------------2.As a Faculty---------------------------------');
    print(
        '----------------------------3.Exit-----------------------------------------');
    stdout.write('Enter Your Choice : ');
    var userinput = stdin.readLineSync();
    if (userinput == '1') {
      print('');
      print(
          '---------------------------- Login As a Student ---------------------------');
      studentlogin();
    } else if (userinput == '2') {
      print('');
      print(
          '------------------------ Login As a Faculty Member ------------------------');
      facultylogin();
    } else {
      print('====== Program Ended ======');
      isContinue = false;
    }
  }
}

studentlogin() {
  stdout.write('Enter Your Email : ');
  var stdemail = stdin.readLineSync();
  stdout.write('Enter Your Password : ');
  var spassword = stdin.readLineSync();
  print('\nEmail: $stdemail');
  print('Password: $spassword');
  if (stdemail == 'student@gmail.com' && spassword == 'student123') {
    print('====== Login Successful! ======');
    print(' ');
    print(
        '-------------------------------- Main Menu --------------------------------');
    return studentDashboard();
  } else {
    print('Invalid Login Credentials!');
  }
}

studentDashboard() {
  print(' ');
  print('1.Complaints');
  print('2.Log Out');
  stdout.write('Enter Your Choice :  ');
  var section = stdin.readLineSync();
  if (section == '1') {
    print(' ');
    return Complaint();
  } else {
    print('====== Logged Out Successfully ======');
  }
}

Complaint() {
  print(
      '------------------------------ Complaint Menu -------------------------------');
  print('1.Submit a Complaint');
  print('2.Edit Your Complaint');
  print('3.View Your Complaint');
  stdout.write('Enter Your Choice: ');
  var nmbr = stdin.readLineSync();
  if (nmbr == '1') {
    print('');
    print(
        '-------------------------- Submit Complaint Menu --------------------------');
    return submitComplaint();
  } else if (nmbr == '2') {
    print(' ');
    print(
        '--------------------------- Edit Your Complaint ---------------------------');
    return editComplaint();
  } else if (nmbr == '3') {
    print('');
    print(
        '--------------------------- View Your Complaint ---------------------------');
    return viewComplaint();
  } else {
    print('Enter a Valid Choice');
    print('');
    return Complaint();
  }
}

addComplaint() {
  stdout.write("Enter Your Name: ");
  var name = stdin.readLineSync();
  stdout.write("Enter Your Student ID: ");
  var id = stdin.readLineSync();
  stdout.write("Enter Your Complaint: ");
  var complaint = stdin.readLineSync();
  complaintss.add(
      {'name': name, 'id': id, 'complaint': complaint, 'status': 'Pending'});
  if (complaintss.isNotEmpty) {
    print("====== Complaint Submitted Successfully ======");
    print('');
    print('====== Returned to Main Menu ======');
    return Complaint();
  }
}

submitComplaint() {
  print('1.Academic');
  print('2.Transport');
  print('3.Sanitation');
  print('4.Exit');
  stdout.write('Enter Your Choice : ');
  var section = stdin.readLineSync();
  if (section == '1') {
    print('');
    print(
        '------------------ Submit a Complaint Regarding Academics -----------------');
    return addComplaint();
  } else if (section == '2') {
    print('');
    print(
        '------------------ Submit a Complaint Regarding Transport -----------------');
    return addComplaint();
  } else if (section == '3') {
    print('');
    print(
        '----------------- Submit a Complaint Regarding Sanitation -----------------');
    return addComplaint();
  } else {
    print('');
    print('====== Returned to Main Menu ======');
    return Complaint();
  }
}

editComplaint() {
  if (complaintss.isNotEmpty) {
    stdout.write('Your Complaint is: ');
    print(complaintss);
    print(' ');

    stdout.write("Enter Your Name: ");
    var name = stdin.readLineSync();
    stdout.write("Enter Your Student ID: ");
    var id = stdin.readLineSync();
    stdout.write("Enter Your Complaint: ");
    var complaint = stdin.readLineSync();
    complaintss.add(
        {'name': name, 'id': id, 'complaint': complaint, 'status': 'Pending'});
    if (complaintss.isNotEmpty) {
      print("====== Complaint Edited Successfully ======");
    }
    stdout.write('The Edited Complaint is: ');
    print(complaintss);
    print('');
    print('====== Returned to Main Menu ======');
    return Complaint();
  } else {
    print('You Have No Submitted Complaints');
    print('====== Returned to Main Menu ======');
    return Complaint();
  }
}

viewComplaint() {
  if (complaintss.isEmpty) {
    print('You Have No Submitted Complaints');
    print('====== Returned to Main Menu ======');
    return Complaint();
  }

  for (var i = 0; i < complaintss.length; i++) {
    print('');
    print(
        '-------------------- Your Submitted Complaint ${i + 1} --------------------');
    print('Name: ${complaintss[i]['name']}');
    print('Student ID: ${complaintss[i]['id']}');
    print('Complaint: ${complaintss[i]['complaint']}');
    print('Status: ${complaintss[i]['status']}');
    print('');
  }
  return studentDashboard();
}
//========================================================================Faculty Code================================================================

facultylogin() {
  stdout.write('Enter Your Email : ');
  var stdemail = stdin.readLineSync();
  stdout.write('Enter Your Password : ');
  var spassword = stdin.readLineSync();
  print('\nEmail: $stdemail');
  print('Password: $spassword');
  if (stdemail == 'admin@gmail.com' && spassword == 'admin123') {
    print('====== Login Successful! ======');
    print('');
    print(
        '-------------------------------- Main Menu --------------------------------');
    return facultydashboard();
  } else {
    print('Invalid User Account');
  }
}

facultydashboard() {
  print('');
  print('1.View Complaints');
  print('2.Log Out');
  stdout.write('Enter Your Choice :  ');
  var section = stdin.readLineSync();
  if (section == '1') {
    print(
        '------------------------------ View Complaint -----------------------------');
    return facultyviewcomplaint();
  } else {
    print('====== Logged Out Successfully ======');
    main();
  }
}

facultyviewcomplaint() {
  if (complaintss.isEmpty) {
    print('You Have No Submitted Complaints');
    print('====== Returned to Main Menu ======');
    return facultydashboard();
  }

  for (var i = 0; i < complaintss.length; i++) {
    print('');
    print(
        '-------------------- Your Submitted Complaint ${i + 1} --------------------');
    print('Name: ${complaintss[i]['name']}');
    print('Student ID: ${complaintss[i]['id']}');
    print('Complaint: ${complaintss[i]['complaint']}');
    print('Status: ${complaintss[i]['status']}');
    print('');
  }
  while (true) {
    stdout.write(
        "Enter 'A' to approve, 'D' to disapprove, or 'E' to return to Main Menu,Select Your Choice : ");
    var choice = stdin.readLineSync()!.toUpperCase();
    if (choice == 'A') {
      approveComplaint();
      return facultydashboard();
    } else if (choice == 'D') {
      disapproveComplaint();
      return facultydashboard();
    } else if (choice == 'E') {
      print(' ');
      print(
          '------------------------------- Main Menu -------------------------------');
      return facultydashboard();
    } else {
      print('Invalid Choice! Please try again.');
    }
  }
}

approveComplaint() {
  stdout.write('Enter the Complaint Number to Approve: ');
  int complaintNumber = int.parse(stdin.readLineSync()!);
  if (complaintNumber > 0 && complaintNumber <= complaintss.length) {
    complaintss[complaintNumber - 1]['status'] = 'Approved';
    print('Complaint Approved Successfully!');
  } else {
    print('Invalid Complaint Number!');
  }
}

disapproveComplaint() {
  stdout.write('Enter the Complaint Number to Disapprove: ');
  int complaintNumber = int.parse(stdin.readLineSync()!);
  if (complaintNumber > 0 && complaintNumber <= complaintss.length) {
    complaintss[complaintNumber - 1]['status'] = 'Disapproved';
    print('Complaint Disapproved Successfully!');
  } else {
    print('Invalid Complaint Number!');
  }
}
