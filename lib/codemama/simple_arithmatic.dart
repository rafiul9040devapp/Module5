import 'dart:io';

void main() {
  print('Enter The Expression...');
  String? expression = stdin.readLineSync() ?? '';
  int? firstNumber = numberChecker(expression[0]);
  int? secondNumber = numberChecker(expression[4]);
  int? result = operator(firstNumber, secondNumber, expression[2]);
  print(result);
}

int? operator(int? firstNumber, int? secondNumber, String name) {
  switch (name) {
    case '+':
      return (firstNumber! + secondNumber!);
    case '-':
      return (firstNumber! - secondNumber!);
    case '*':
      return (firstNumber! * secondNumber!);
    case '/':
      if (secondNumber != 0) {
        return (firstNumber! / secondNumber!).toInt();
      } else {
        print('Division by zero is not allowed.');
        return null;
      }
    default:
      print('Invalid operator');
      return null;
  }
}

int? numberChecker(String number) {
  switch (number) {
    case '0':
      return 0;
    case '1':
      return 1;
    case '2':
      return 2;
    case '3':
      return 3;
    case '4':
      return 4;
    case '5':
      return 5;
    case '6':
      return 6;
    case '7':
      return 7;
    case '8':
      return 8;
    case '9':
      return 9;
    default:
      print('Invalid operator');
      return null;
  }
}
