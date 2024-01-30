import 'dart:io';

void main() {
  countTrueValues();
}

void countTrueValues() {
  // Input
  print("Enter the length of the array and boolean numbers separated by space:");
  List<int> inputList = [];
  String? input = stdin.readLineSync();
  if (input != null) {
    inputList = input.split(' ').map((e) => int.parse(e)).toList();
  }

  // Call the function with the input values
  int trueCount = inputList.sublist(1).where((element) => element == 1).length;
  print(trueCount);
}
