import 'dart:io';

void main() {
  calculateDiscountedPrice();
}

void calculateDiscountedPrice() {
  // Input
 print("Enter the original price and discount percentage separated by a space:");
  List<int?> inputValues = (stdin.readLineSync() ?? '')
      .split(' ')
      .map((value) => int.tryParse(value))
      .toList();

  // Validate input
  if (inputValues.length != 2 || inputValues.any((value) => value == null)) {
    print("Invalid input. Please enter two valid integers separated by a space.");
    return;
  }

  // Extract values
  int originalPrice = inputValues[0]!;
  int discountPercentage = inputValues[1]!;

  // Calculate discounted price
  double discountedPrice = calculateDiscount(originalPrice, discountPercentage);

  // Print the result
  print("Price: ${discountedPrice.toStringAsFixed(2)}");
}

double calculateDiscount(int originalPrice, int discountPercentage) {
  if (originalPrice < 0 || discountPercentage < 0 || discountPercentage > 100) {
    throw ArgumentError("Invalid input. Please enter non-negative values for the original price and a discount percentage between 0 and 100.");
  }

  double discountAmount = originalPrice * (discountPercentage / 100);
  return originalPrice - discountAmount;
}
