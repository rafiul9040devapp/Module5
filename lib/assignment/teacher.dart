import 'package:module5/assignment/person.dart';

class Teacher extends Person {
  String? teacherId;
  List<String>? coursesTaught = List.empty();

  Teacher(
      {String? role = "Teacher",
      String? name,
      int? age,
      String? address,
      this.coursesTaught,
      this.teacherId})
      : super(role, age, name, address);

  void courseTakenByTeacher(List<String>? courses) {
    if (courses != null && courses.isNotEmpty) {
      print("Courses Taught:");
      for (String course in courses) {
        print("- $course");
      }
    } else {
      print("No Course is taken in this semester");
    }
  }

  @override
  void displayRole() {
    print("${super.roleOfPerson} Information:");
    super.displayRole();
    super.displayPersonalDetails();
    courseTakenByTeacher(coursesTaught);
  }
}

void main() {
  Person jaber = Teacher(
      name: "Jaber",
      age: 25,
      address: "456 Oak St",
      coursesTaught: ["Math", "English", "Bangla"]);
  jaber.displayRole();

  Person jahid = Teacher();
  jahid.displayRole();
}
