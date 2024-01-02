import 'dart:io';

void main() {
  List<String> inputValues = [];

  print('Enter 10 Strings: ');
  getValidUserInput(inputValues);

  int count = countStringsContainingSpecificCharacter(inputValues, 't');
  print(count);
}

void getValidUserInput(List<String> inputValues) {
  while (inputValues.length < 10) {
    String? userInput = getUserInput() ?? '';
    if (isValidUserInput(userInput)) {
      inputValues.add(userInput);
    } else {
      print('Invalid Input');
    }
  }
}

String? getUserInput() {
  return stdin.readLineSync()?.trim();
}

bool isValidUserInput(String userInput) {
  return userInput.isNotEmpty &&
      userInput.length >= 3 &&
      userInput.length <= 15;
}

int countStringsContainingSpecificCharacter(List<String> inputValues, String s) {
  int count = 0;
  for (String input in inputValues) {
    if (input.toLowerCase().contains(s.toLowerCase())) {
      count++;
    }
  }
  return count;
}
