// import 'classes/person.dart';
// import 'classes/student.dart';
//
// void main()
// {
//   Person person1 = Person("name", 12);
//   person1.setAge=-5;
//   person1.printInfo();
//
//
//   person1.setAge=78;
//   person1.printInfo();
//
//
//
//   Student student1 =  Student("Ali", 22, 2.4);
//   student1.printInfo();
//
//   Student student2 =  Student.fresher("Mohammad", 25);
//   student2.printInfo();
//
//
//   student1.setAge =43;
//   student1.printInfo();
// }

/// Mohammad Alaswad
class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set age(int val) {
    if (val > 0) {
      _age = val;
    } else {
      print("the age can not be negative ");
    }
  }
}

class Student extends Person {
  double gpa;

  Student(super.name, super.age, this.gpa);

  Student.fresher(super.name, super.age) : gpa = 0.0;
}

void main() {
  Student s1 = Student("Ali", 22, 2.4);

  Student s2 = Student.fresher("Mohammad", 25);

  print("Student 1:");
  print(s1.name);
  print(s1.age);
  print(s1.gpa);

  s1.age = -19;
  print("After invalid age:");
  print(s1.age);

  print("\nStudent 2:");
  print(s2.name);
  print(s2.age);
  print(s2.gpa);
}

// void main() {
//   late String player;
//   List<int?> scores = [10, null, 20, 30];
//
//   try{
//     player='Mario';
//     print("The Player : $player");
//
//     List<int> cleanScores =[];
//     for(var s in scores) {
//       if (s != null) {
//         cleanScores.add(s); // 10 20 30
//       }
//     }
//
//     if(cleanScores.isEmpty){
//       throw Exception('لا توجد نقاط');
//     }
//
//     var bestRound = cleanScores.skip(1).take(2); // 20 30
//
//     int total = bestRound.fold(0, (sum, s) => sum + s,); //50
//
//     int? bonus;
//     int finalScore = total  + (bonus ?? 5); //55
//
//     print("The Final Score : $finalScore");
//
//   }catch(e){
//     print("Error : $e");
//   }
//}

// /// Mohammad Alaswad
// import 'dart:io';
//
// List<Map<String, dynamic>> homeDevices = [
//   {'name': 'AC', 'isOn': false, 'room': 'Living Room', 'power': 1500},
//   {'name': 'TV', 'isOn': true, 'room': 'Living Room', 'power': 200},
//   {'name': 'Light', 'isOn': true, 'room': 'Kitchen', 'power': 20},
//   {'name': 'Fridge', 'isOn': true, 'room': 'Kitchen', 'power': 500},
// ];
// void main() {
//   getStatus();
//   print(" this is the sum of powered on devices : ${sumOfWatts()}");
//
//   toggle();
//   //ecoMode();
//
//   getStatus();
//
//   print(" this is the sum of powered on devices : ${sumOfWatts()}");
// }
//
// void getStatus() {
//   homeDevices.forEach((device) {
//     print("device: ${device['name']} and it's status is:  ${device['isOn']}");
//   });
// }
//
// void toggle() {
//   bool found = false;
//   print("please enter the name of the deivce you want to change it's status");
//   try {
//     String? input = stdin.readLineSync();
//     if (input == null || input.isEmpty) {
//       print("Invalid input ");
//       return;
//     }
//
//     for (int i = 0; i < homeDevices.length; i++) {
//       if (homeDevices[i]['name'] == input) {
//         found = true;
//         var statusValue = homeDevices[i]['isOn'];
//
//         homeDevices[i]['isOn'] = !statusValue;
//
//         print("Device status changed successfully ");
//
//         break;
//       }
//     }
//     if (!found) {
//       print(" the device you entered is not exist");
//     }
//   } catch (e) {
//     print(" input error ");
//   }
// }
//
// void ecoMode() {
//   homeDevices.where((device) => device['power'] > 100).forEach((device) {
//     device['isOn'] = false;
//   });
// }
//
// int sumOfWatts() {
//   var sum = 0;
//   homeDevices.where((device) => device['isOn'] == true).forEach((device) {
//     sum += device['power'] as int;
//   });
//
//   return sum;
// }

/// TASK 1
// import 'dart:io';
// List<Map<String, dynamic>> homeDevices = [
//   {'name': 'AC', 'isOn': false, 'room': 'Living Room', 'power': 1500},
//   {'name': 'TV', 'isOn': true, 'room': 'Living Room', 'power': 200},
//   {'name': 'Light', 'isOn': true, 'room': 'Kitchen', 'power': 20},
//   {'name': 'Fridge', 'isOn': true, 'room': 'Kitchen', 'power': 500},
// ];
//
// void main() {
//   print("🏠 --- Welcome to Smart Home System --- 🏠");
//
//   while (true) {
//     print("\n--- Main Menu ---");
//     print("1. View Devices Status");
//     print("2. Toggle Device (On/Off)");
//     print("3. Activate Eco Mode (Save Energy)");
//     print("4. Calculate Total Power Consumption");
//     print("5. Exit");
//     stdout.write("Select an option: ");
//
//     String? choice = stdin.readLineSync();
//
//     switch (choice) {
//       case '1':
//         displayStatus();
//         break;
//       case '2':
//         toggleDevice();
//         break;
//       case '3':
//         activateEcoMode();
//         break;
//       case '4':
//         calculatePower();
//         break;
//       case '5':
//         print("Shutting down system...");
//         return;
//       default:
//         print("❌ Invalid option.");
//     }
//   }
// }
//
// void displayStatus() {
//   print("\n--- Device Status ---");
//   for (var device in homeDevices) {
//     String status = device['isOn'] ? "ON ✅" : "OFF ❌";
//     print("- ${device['name']} (${device['room']}): $status");
//   }
// }
//
// void toggleDevice() {
//   stdout.write("Enter device name to toggle: ");
//   String? name = stdin.readLineSync();
//
//   try {
//     var device = homeDevices.firstWhere(
//           (d) => d['name'].toLowerCase() == name?.toLowerCase(),
//       orElse: () => {},
//     );
//
//     if (device.isEmpty) {
//       print("❌ Device not found.");
//     } else {
//       device['isOn'] = !device['isOn'];
//       print("Done! ${device['name']} is now ${device['isOn'] ? 'ON' : 'OFF'}");
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }
//
// void activateEcoMode() {
//   print("Activating Eco Mode...");
//
//   var highPowerDevices = homeDevices.where((d) => d['power'] > 100 && d['isOn'] == true);
//
//   highPowerDevices.forEach((d) {
//     d['isOn'] = false;
//     print("Shutting down ${d['name']} to save energy.");
//   });
//
//   print("✅ Eco Mode active.");
// }
//
// void calculatePower() {
//   double total = homeDevices
//       .where((d) => d['isOn'] == true)
//       .fold(0, (sum, d) => sum + d['power']);
//
//   print("\n⚡ Current Power Consumption: $total Watts");
//
//   if (total > 2000) {
//     print("⚠️ Warning: High power load!");
//   }
// }

// import 'functions.dart';
//
// void main() {
//   print('⚽ Elite Football Club\n');
//
//   Set<String> players = {'Salah', 'Benzema', 'Son', 'Mane', 'Kane'};
//
//   Map<String, int> goals = {
//     'Salah': 23,
//     'Benzema': 18,
//     'Son': 15,
//     'Mane': 12,
//     'Kane': 9,
//   };
//
//   searchPlayer(players, "Sa");
//   print("Top Score : ${getTopScores(goals)}");
//   displayPlayers(name: "Salah", goals: 23, showPosition: true);
//   displayPlayers(name: "Son", goals: 22);
//
//   print("Total Goals : ${totalGoals(goals)}");
//
//   print(checkAny(goals));
//   print(checkEvery(goals));
// }

// void main() {
//   List<List<dynamic>> products = [
//     ["Samsung A54", 300, true],
//     ["iPhone 13", 800, true],
//     ["Laptop Dell", 1200, false],
//     ["AirPods", 150, true],
//     ["Smart Watch", 200, true],
//   ];
//
//   print(products);
//
//   products.removeWhere((element) => element[0] == "Laptop Dell");
//   print(products);
//
//   int iphoneIndex = products.indexWhere((element) => element[0] == "iPhone 13");
//   if(iphoneIndex != -1){
//     products[iphoneIndex][1] = 950;
//   }
//
// var cheapProduct = products.where((element) => element[1] < 500 ,).toList();
//
//   print(cheapProduct);
// }

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
