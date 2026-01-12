void main() {
  List<List<dynamic>> products = [
    ["Samsung A54", 300, true],
    ["iPhone 13", 800, true],
    ["Laptop Dell", 1200, false],
    ["AirPods", 150, true],
    ["Smart Watch", 200, true],
  ];

  print(products);

  products.removeWhere((element) => element[0] == "Laptop Dell");
  print(products);

  int iphoneIndex = products.indexWhere((element) => element[0] == "iPhone 13");
  if(iphoneIndex != -1){
    products[iphoneIndex][1] = 950;
  }

var cheapProduct = products.where((element) => element[1] < 500 ,).toList();

  print(cheapProduct);
}

// void main() {
//   List<int> grades = [22, 50, 90, 75, 32, 88, 45];
//
//   print("Is List empty ?  ${grades.isEmpty}");
//
//   grades.addAll([60, 15]);
//
//   print("Grade After Adding : $grades");
//
//   var failedGrades = grades.where((g) => g < 50).toList();
//   print("Failed Grades : $failedGrades");
//
//   final targetIndex = grades.indexOf(22); //0
//   if (targetIndex != -1) {
//     grades[targetIndex] = 55;
//   }
//   print(grades);
//
//   double sum = 0;
//   for (var g in grades) {
//     sum += g;
//   } // sum = sum + g
//   print("Average : ${sum / grades.length}");
// }

/// Mohammad Alaswad
// void main(List<String> arguments) {
//   // print('Hello world: ${students_grades.calculate()}!');
//   List<int> grades = [22, 50, 90, 75, 32, 88, 45];
//   double avg = 0;
//   int sum = 0;
//
//   if (grades.isEmpty) {
//     print("The list is empty");
//   } else {
//     print("The list is not empty");
//   }
//   grades.addAll([60, 15]);
//
//   // Get all markes less than than 50
//   List<int> failing_marks_list = grades.where((n) => n < 50).toList();
//
//   print("the falling markes are: $failing_marks_list");
//
//   for (int i = 0; i < failing_marks_list.length; i++) {
//     if (failing_marks_list[i] == 22) {
//       failing_marks_list[i] = 55;
//     }
//   }
//   print("the falling markes after updating are: $failing_marks_list");
//
//   for (int i = 0; i < grades.length; i++) {
//     sum = sum + grades[i];
//   }
//   avg = sum / grades.length;
//   print("the average of the grades is :$avg");
// }

/// MOLHAM
// void main() {
//   double numcount = 9;
//   double totalavg = 0;
//   List<int> Number = [22, 50, 90, 75, 32, 88, 45];
//   print(Number);
//   List num2 = [];
//   Number[0] = 55;
//   print(Number);
//   print(Number.isNotEmpty);
//   Number.addAll([15, 60]);
//   print("after $Number");
//   for (int i = 0; i < Number.length; i++) {
//     if (Number[i] < 50) {
//       num2.add(Number[i]);
//     }
//   }
//   print(num2);
//   if (numcount > 0) {
//     double avg = totalavg / numcount;
//     print("average  : $avg");
//   }
// }

// import 'dart:io';
//
// void main() {
//   int studentCount = 0;
//   double totalScores = 0;
//   double highestScore = -1;
//   double lowestScore = 101;
//   String topStudentName = "";
//
//   print("=== Welcome to Smart Class Manager ===");
//   print("Enter students details one by one.");
//
//   while (true) {
//     stdout.write('Enter Student Name (or type "exit" to finish): ');
//     String? nameInput = stdin.readLineSync();
//
//     String name = nameInput?.trim() ?? "Unknown";
//
//     if (name.toLowerCase() == "exit") {
//       break;
//     }
//
//     if (name.isEmpty) {
//       print("Name Cannot be empty !");
//       continue;
//     }
//
//     double score = -1; // 0 - 100
//
//     do {
//       stdout.write("Enter Score for $name (0 - 100) :");
//       String? scoreInput = stdin.readLineSync();
//
//       score = double.tryParse(scoreInput ?? "") ?? -1;
//
//       if (score < 0 || score > 100) {
//         print("Invalid Score ! Please Enter Number between 0 - 100");
//       }
//     } while (score < 0 || score > 100);
//
//     studentCount++;
//     totalScores += score; // totalScores = totalScores + score
//
//     String grade;
//     if (score >= 90) {
//       grade = "A (Excellent)";
//     } else if (score >= 80) {
//       grade = "B (Very Good)";
//     } else if (score >= 70) {
//       grade = "C (Good)";
//     } else if (score >= 50) {
//       grade = "D (Pass)";
//     } else {
//       grade = "F (Fail)";
//     }
//
//
//     print(">> Result: $name got $score [$grade]");
//
//     if (score > highestScore) {
//       highestScore = score;
//       topStudentName = name;
//     }
//
//     if (score < lowestScore) {
//       lowestScore = score;
//     }
//   }
//   print("\n${"=" * 30}"); // =====================================
//   print("Class Final Report");
//   print("\n${"=" * 30}");
//
//
//   if(studentCount > 0){
//     double averageScore = totalScores / studentCount;
//     print("Total Students : $studentCount ");
//     print("Average Score : $averageScore");
//     print("Highest Score : $highestScore by $topStudentName");
//     print("Lowest Score : $lowestScore");
//     } else {
//     print("No Students Entered !");
//   }
// }

// import 'dart:io';
//
// void main() {
//   print("Entre a password to check !");
//
//   String? password = stdin.readLineSync() ?? "";
//
//   bool hasMinLength = password.length >= 8;
//   bool hasUpperCase = false;
//   bool hasDigits = false;
//
//   for (int i = 0; i < password.length; i++) {
//     String char = password[i];
//     if (char.contains(RegExp(r'[A-Z]'))) hasUpperCase = true;
//     if (char.contains(RegExp(r'[0-9]'))) hasDigits = true;
//   }
//
//   print("Check Result :");
//
//   if(!hasMinLength) print("Password is too short . (minimum 8 char required)");
//   if(!hasUpperCase) print("Password must contain at least one uppercase letter");
//   if(!hasDigits) print("Password must contain at least one digit");
//
//
//   if(hasMinLength && hasUpperCase && hasDigits) {
//     print("Final Result : Strong Password");
//   } else{
//     print("Final Result : Weak Password");
//   }
// }

// import 'dart:io';
//
// void main() {
//   double balance = 1000; //  1000.0
//   print("Welcome to the bank ! Your current balance is $balance");
//
//   while (true) {
//     print("Choose a process : 1. Deposit 2. Withdrawal 3.Balance Check 4.Exit");
//
//     String? input = stdin.readLineSync();
//
//     if(input == null || input.isEmpty) continue;
//
//     if(input == "4") break;
//
//     switch (input){
//       case "1":
//         print("Entre the amount you wish to deposit :");
//
//         double? amount = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
//
//         if(amount != null && amount > 0 ){
//           balance += amount;
//           print("Deposit successful. Your balance : $balance");
//         } else {
//           print("Error : please entre a valid number");
//         }
//         break;
//
//       case "2":
//         print("Entre the amount you wish to Withdrawal :");
//
//         double? amount = double.tryParse(stdin.readLineSync() ?? "");
//
//         if(amount == null) {
//           print("Error : please entre a valid number");
//         } else if(amount > balance || amount <=0){
//           print("Error : Your current balance is $balance");
//         } else {
//           balance -= amount;
//           print("Withdrawal successful. Your balance : $balance");
//         }
//         break;
//
//       case "3":
//         print(" Your current balance is $balance");
//         break;
//
//         default:
//         print("Error : please entre a valid number");
//     }
//   }
//   print("Thank you for using our bank !");
// }
