import 'dart:io';

void main() {
  print('Enter the screen width:');
  String? userInput = stdin.readLineSync() ?? '';
  int? screenWidth = readScreenWidth(userInput) ?? 480;

  if (screenWidth < 480 || screenWidth > 2160 || screenWidth % 10 != 0) {
    print(
        'Invalid screen width. Please make sure it satisfies the constraints.');
    return;
  }
  int tableWidth = 300;
  int leftMargin = (screenWidth - tableWidth) ~/ 2;
  print('Left margin for the table: $leftMargin');
}

int? readScreenWidth(String userInput) {
  int? screenWidth;
  if (userInput.isNotEmpty) {
    try {
      return screenWidth = int.parse(userInput, radix: 10);
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
      return null;
    }
  } else {
    print('Invalid input. Please enter a valid integer.');
    return null;
  }
}
