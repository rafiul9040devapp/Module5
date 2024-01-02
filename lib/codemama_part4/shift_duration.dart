import 'dart:io';

void main() {
  print('Enter The Starting Shift: ');
  int startingShift = getTheValidShift();

  print('Enter The Ending Shift: ');
  int endingShift = getTheValidShift();

  if (!startingShift.isNegative && !endingShift.isNegative) {
    calculateTheShiftHour(startingShift, endingShift);
  } else {
    print('Invalid Shift Time...');
  }
}

int getTheValidShift() {
  String? userInput = stdin.readLineSync() ?? '';
  if (userInput.isNotEmpty) {
    int shift = int.parse(userInput, radix: 10);
    if (shift >= 0 && shift <= 23) {
      return shift;
    }
  }
  return -1;
}

void calculateTheShiftHour(int startingShift, int endingShift) {
  int totalShiftHour = 0;
  if (startingShift == endingShift) {
    totalShiftHour = 24;
  } else {
    int startingHour = (23 - startingShift) + 1;
    if (endingShift == 0) {
      totalShiftHour = startingShift + 1;
    } else {
      totalShiftHour = startingHour + endingShift;
    }
  }
  if (totalShiftHour <= 24) {
    print(totalShiftHour);
  } else {
    print('Total Shift Time is More Than 24 Hours...');
  }
}
