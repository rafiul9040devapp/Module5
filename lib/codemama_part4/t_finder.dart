import 'dart:io';

void main() {
  List<String> inputValue = [];

  print('Enter 10 Strings');
  getValidInput(inputValue);

  int count = findTheSpecificCharacter(inputValue);
  print(count);
}

void getValidInput(List<String> inputValue) {
  while (inputValue.length < 10) {
    String? userInput = stdin.readLineSync() ?? '';
    if (userInput.isNotEmpty) {
      if (userInput.length >= 3 && userInput.length <= 15) {
        inputValue.add(userInput);
      } else {
        print('Invalid Input');
      }
    } else {
      print('User Input is Empty');
    }
  }
}

int findTheSpecificCharacter(List<String> inputValue) {
  int count = 0;
  for (String input in inputValue) {
    if (input.contains('t') || input.contains('T')) {
      count++;
    }
  }
  return count;
}
