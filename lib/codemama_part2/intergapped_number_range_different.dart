import 'dart:io';

void main() {
  print('Enter four integers (l1 r1 l2 r2):');
  List<int?> inputValues = readIntList(4);

  if (inputValues.length == 4) {
    int? l1 = inputValues[0] ?? 0;
    int? r1 = inputValues[1] ?? 0;
    int? l2 = inputValues[2] ?? 0;
    int? r2 = inputValues[3] ?? 0;

    if (isValidInput(l1, r1, l2, r2)) {
      printSegments(l1, r1, l2, r2);
    } else {
      print('Invalid input. Please make sure the constraints are satisfied.');
    }
  } else {
    print('Invalid input. Please enter four integers.');
  }
}

List<int?> readIntList(int count) {
  String? userInput = stdin.readLineSync();
  List<int?> values =
      userInput?.split(' ').map((value) => int.tryParse(value)).toList() ?? [];
  return values.length == count ? values : [];
}

bool isValidInput(int? l1, int? r1, int? l2, int? r2) {
  return l1 != null &&
      r1 != null &&
      l2 != null &&
      r2 != null &&
      l1 < r1 &&
      l1 < l2 &&
      l2 < r2 &&
      r2 < r1;
}

void printSegments(int l1, int r1, int l2, int r2) {
  String firstSeries = '';
  String secondSeries = '';

  for (int i = l1; i < l2; i++) {
    firstSeries += '$i ';
  }

  for (int i = r2 + 1; i <= r1; i++) {
    secondSeries += '$i ';
  }

  print('$firstSeries$secondSeries');
}
