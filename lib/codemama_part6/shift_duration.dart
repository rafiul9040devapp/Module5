import 'dart:io';

void main() {
 // print("Enter the start and end times of the work shift separated by a "
  //"space:");
  String inputStr = stdin.readLineSync() ?? "";
  List<String> inputList = inputStr.split(' ');

  if (inputList.length == 2) {
    int start = int.tryParse(inputList[0]) ?? 0;
    int end = int.tryParse(inputList[1]) ?? 0;

    int duration = calculateWorkShiftDuration(start, end);

    print(duration);
   // print("Duration of the work shift: $duration hours");
  } else {
    print("Invalid input. Please enter valid start and end times.");
  }
}

int calculateWorkShiftDuration(int start, int end) {
  const int maxHoursInDay = 24;

  if (start < 0 || start >= maxHoursInDay || end < 0 || end >= maxHoursInDay) {
    print("Invalid input. Please enter valid start and end times.");
    return 0;
  }

  int duration = end - start;

  // Check if the work shift spans across two days
  if (duration < 0) {
    duration += maxHoursInDay;
  }

  return duration;
}
