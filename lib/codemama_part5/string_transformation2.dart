import 'dart:io';
void main() {
  print("Enter a string:");
  String inputString =  stdin.readLineSync() ?? "";
  String outputString = transformString(inputString);
  print("Transformed String: $outputString");
}

String transformString(String s) {
  String transformedString = "";
  for (int i = 0; i < s.length; i++) {
    if (i % 3 == 2) {
      transformedString += s[i].toUpperCase();
    } else {
      transformedString += s[i].toLowerCase();
    }
  }
  return transformedString;
}
