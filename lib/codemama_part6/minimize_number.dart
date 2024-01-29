import 'dart:io';

void minimizeNumber(String s, int k) {
  List<String> sList = s.split('');
  int i = 0;

  while (k > 0 && i < sList.length) {
    if (i == 0 && sList[i] != '1') {
      sList[i] = '1';
      k -= 1;
    } else if (i > 0 && sList[i] != '0') {
      sList[i] = '0';
      k -= 1;
    }
    i += 1;
  }

  String result = sList.join();
  print("Min = $result");
}

void main() {
  print("Enter the string S and integer K separated by a space:");
  String inputStr = stdin.readLineSync() ?? "";
  List<String> inputList = inputStr.split(' ');

  if (inputList.length == 2) {
    String s = inputList[0];
    int k = int.tryParse(inputList[1]) ?? 0;

    minimizeNumber(s, k);
  } else {
    print("Invalid input. Please enter a valid string and integer.");
  }
}
