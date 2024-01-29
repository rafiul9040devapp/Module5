import 'dart:io';

void main() {
  print("Enter three integers A, B, C separated by spaces:");
  String inputIntegers = stdin.readLineSync() ?? "";
  List<int?> values = inputIntegers.split(' ').map(int.tryParse).toList();

  print("Enter the order string (e.g., ABC):");
  String orderString = (stdin.readLineSync() ?? "").toUpperCase();

  List<int?> newList = [];

  if (values.length == 3 && values.every((element) => element != null)) {
    newList.add(values[2]);
    newList.add(values[0]);
    newList.add(values[1]);

    String result = '';
    for (int i = 0; i < orderString.length; i++) {
      switch (orderString[i]) {
        case 'A':
          result += '${newList[0]} ';
          break;
        case 'B':
          result += '${newList[1]} ';
          break;
        case 'C':
          result += '${newList[2]} ';
          break;
      }
    }
    print(result);
  } else {
    print("Invalid input. Please enter three valid integers.");
  }
}
