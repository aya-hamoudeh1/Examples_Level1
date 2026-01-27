import 'person.dart';

class Student extends Person {
  // name , age , gpa
  double gpa;

  Student(super.name, super.age, this.gpa);

  Student.fresher(super.name, super.age) : gpa = 0.0;

  @override
  void printInfo() {
    print("Name : $name , Age: $age ," "GPA : $gpa");
  }
}
