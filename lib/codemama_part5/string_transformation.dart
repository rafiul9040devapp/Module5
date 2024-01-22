import 'dart:io';

void main() {
  print("Enter a string:");
  String inputString = stdin.readLineSync() ?? "";
  String outputString = transformString(inputString);
  print("Transformed String: $outputString");
}

String transformString(String s) {
  String transformedString = "";
  for (int i = 0; i < s.length; i++) {
    transformedString += s[i];
    if ((i + 1) % 2 == 0 && i < s.length - 1) {
      transformedString += 'x';
    }
  }
  return transformedString;
}
