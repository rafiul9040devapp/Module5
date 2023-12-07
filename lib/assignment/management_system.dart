import 'package:module5/assignment/person.dart';
import 'package:module5/assignment/student.dart';
import 'package:module5/assignment/teacher.dart';

class ManagementSystem {
  static void main() {
    Person jaber = Teacher(
        name: "Jaber",
        age: 25,
        address: "456 Oak St",
        coursesTaught: ["Math", "English", "Bangla"]);

    Person sakib = Student(
        name: "sakib", age: 25, address: "123 Main St", score: [90, 85, 82]);

    jaber.displayRole();
    print("\n------------------------\n");
    sakib.displayRole();
  }
}

void main() {
  ManagementSystem.main();
}
