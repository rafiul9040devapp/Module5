import 'dart:io';

void main() {
  // Read input
  int n = int.parse(stdin.readLineSync()!);
  String colors = stdin.readLineSync()!;

  // Count consecutive tiles with same color
  int consecutiveTilesToRemove = countConsecutiveTilesToRemove(colors);

  // Print the result
  print(consecutiveTilesToRemove);
}

int countConsecutiveTilesToRemove(String colors) {
  int consecutiveCount = 0;
  for (int i = 1; i < colors.length; i++) {
    if (colors[i] == colors[i - 1]) {
      consecutiveCount++;
    }
  }
  return consecutiveCount;
}
