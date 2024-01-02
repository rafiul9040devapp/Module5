import 'dart:io';

void main() {
  print('Enter The Starting And Ending Shift Time: ');
  String? userInput = stdin.readLineSync();
  List<int?> shifting = getTheValidShiftHour(userInput);

  if (shifting.length == 2) {
    int? startingShift = shifting[0] ?? -1;
    int? endingShift = shifting[1] ?? -1;
    if (!startingShift.isNegative && !endingShift.isNegative) {
      calculateTheShiftDuration(startingShift, endingShift);
    } else {
      print('Invalid Shift Hour');
    }
  } else {
    print('Invalid Input');
  }
}
List<int?> getTheValidShiftHour(String? userInput) {
  if (userInput != null && userInput.isNotEmpty) {
    List<int?> shifts = userInput.split(' ').map((shift) {
      int? parsedValue = int.tryParse(shift);
      return parsedValue != null && parsedValue >= 0 && parsedValue <= 23
          ? parsedValue
          : null;
    }).toList();
    return shifts.length == 2 ? shifts : [];
  }
  return [];
}

void calculateTheShiftDuration(int startingShift, int endingShift) {
  int totalShiftDuration = (endingShift - startingShift + 24) % 24;
  totalShiftDuration > 0 ? print('$totalShiftDuration') : print('24');
}
