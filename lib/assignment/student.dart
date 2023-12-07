import 'package:module5/assignment/person.dart';

class Student extends Person {
  String? studentId;
  Student? grade;
  List<double>? score = List.empty();

  Student(
      {String role = "Student",
      String? name,
      int? age,
      String? address,
      this.score,
      this.studentId})
      : super(role, age, name, address);

  double averageScore(List<double>? score) {
    if (score != null && score.isNotEmpty) {
      double result = 0.0;
      for (double element in score) {
        result += element;
      }
      return (result / score.length);
    } else {
      return 0;
    }
  }

  @override
  void displayRole() {
    print("${super.roleOfPerson} Information:");
    super.displayRole();
    super.displayPersonalDetails();
    print("Average Score: ${averageScore(score).toStringAsFixed(2)}");
  }
}

void main() {
  Person rakib = Student();
  rakib.displayRole();

  Person sakib = Student(name: "sakib", age: 25, address: "123 Main St",
      score: [90, 85, 82]);

  sakib.displayRole();
}
