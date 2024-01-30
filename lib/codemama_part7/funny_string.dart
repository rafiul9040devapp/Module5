import 'dart:io';

void main() {
  checkFunnyString();
}

void checkFunnyString() {
   print("Enter the string:");
  String? input = stdin.readLineSync();

  String result = isFunnyString(input) ? "Yes" : "No";
  print(result);
}

bool isFunnyString(String? s) {
  if (s == null) {
    return false;
  }

  int length = s.length;

  for (int i = 0; i < length - 1; i += 2) {
    int currentCharCode = s.codeUnitAt(i);
    int nextCharCode = s.codeUnitAt(i + 1);

    if (!areCharactersFunny(currentCharCode, nextCharCode)) {
      return false;
    }
  }

  if (length % 2 != 0 && !isLowerCase(s.codeUnitAt(length - 1))) {
    return false;
  }

  return true;
}

bool areCharactersFunny(int charCode1, int charCode2) {
  return isLowerCase(charCode1) && isUpperCase(charCode2);
}

bool isLowerCase(int charCode) {
  return charCode >= 97 && charCode <= 122;
}

bool isUpperCase(int charCode) {
  return charCode >= 65 && charCode <= 90;
}
