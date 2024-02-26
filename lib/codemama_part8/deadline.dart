import 'dart:io';

void main() {
  // Read input
  List<String> input = stdin.readLineSync()!.split(' ');
  int minutesLeft = int.parse(input[0]);
  int timeForAssignmentA = int.parse(input[1]);
  int timeForAssignmentB = int.parse(input[2]);

  // Check if both assignments can be completed
  String result = canCompleteAssignments(minutesLeft, timeForAssignmentA, timeForAssignmentB);

  // Print the result
  print(result);
}

String canCompleteAssignments(int minutesLeft, int timeForAssignmentA, int timeForAssignmentB) {
  int totalAssignmentTime = timeForAssignmentA + timeForAssignmentB;
  if (totalAssignmentTime <= minutesLeft) {
    return "Yes";
  } else {
    return "No";
  }
}
