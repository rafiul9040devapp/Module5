import 'dart:io';

void main() {
  // Read input
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int weight = input[0];
  int sugarContent = input[1];
  int calories = input[2];

  // Check if it's a cake you can choose
  String result = canChooseCake(weight, sugarContent, calories);

  // Print the result
  print(result);
}

String canChooseCake(int weight, int sugarContent, int calories) {
  if (weight >= 200 && weight <= 300 && sugarContent >= 50 && calories >= 150) {
    return "Yes";
  } else {
    return "No";
  }
}
