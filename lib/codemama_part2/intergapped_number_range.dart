import 'dart:io';

void main() {
  print('L1<L2<R2<R1');
  print('Enter L1:');
  String? userInputL1 = stdin.readLineSync() ?? '';
  int? l1 = checkTheValidityOfInput(userInputL1) ?? 0;

  print('Enter R1:');
  String? userInputR1 = stdin.readLineSync() ?? '';
  int? r1 = checkTheValidityOfInput(userInputR1) ?? 0;

  print('Enter L2:');
  String? userInputL2 = stdin.readLineSync() ?? '';
  int? l2 = checkTheValidityOfInput(userInputL2) ?? 0;

  print('Enter R2:');
  String? userInputR2 = stdin.readLineSync() ?? '';
  int? r2 = checkTheValidityOfInput(userInputR2) ?? 0;

  if (isValidOrder(l1, l2, r2, r1)) {
    String? firstSeries = firstRange(l1, l2);
    String? secondSeries = secondRange(r2, r1);
    print(firstSeries);
    print(secondSeries);
    //84 968 86 504
    //37 802 589 776
    print('$firstSeries$secondSeries');
  } else {
    print('Invalid Input');
  }
}

int? checkTheValidityOfInput(String userInput) {
  if (userInput.isNotEmpty) {
    try {
      return int.parse(userInput, radix: 10);
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
      return null;
    }
  } else {
    print('Invalid input. Please enter a valid integer.');
    return null;
  }
}

bool isValidOrder(int l1, int l2, int r2, int r1) {
  return l1 < l2 && l2 < r2 && r2 < r1;
}

String? firstRange(int l1, int l2) {
  if (l1 == 0 && l2 == 0) {
    return 'Invalid';
  } else {
    String firstSeries = '';
    for (int i = l1; i < l2; i++) {
      firstSeries += '$i ';
    }
    return firstSeries;
  }
}

String? secondRange(int r2, int r1) {
  if (r1 == 0 && r2 == 0) {
    return 'Invalid';
  } else {
    String secondSeries = '';
    for (int i = r2 + 1; i <= r1; i++) {
      secondSeries += '$i ';
    }
    return secondSeries;
  }
}
