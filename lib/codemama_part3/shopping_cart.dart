import 'dart:io';

void main() {
  print('Enter The Product Price & Quantity: ');
 String? userInput = stdin.readLineSync() ?? '';
  int totalInputCount = 2;
  List<int?> inputValues = readTheInput(userInput, totalInputCount);

  if (inputValues.length == totalInputCount) {
    int? productID = inputValues[0] ?? 0;
    int? productQuantity = inputValues[1] ?? 0;

    if (isValid(productID, productQuantity)) {
      getTheCost(productID, productQuantity);
    } else {
      print('Invalid');
    }
  } else {
    print('Invalid');
  }
}

void getTheCost(int productID, int productQuantity) {
  switch (productID) {
    case 101:
      calculateTheCost(productQuantity, 10);
      break;
    case 202:
      calculateTheCost(productQuantity, 25);
      break;
    case 303:
      calculateTheCost(productQuantity, 5);
      break;
    default:
      print('Invalid Product ID');
  }
}

void calculateTheCost(int productQuantity, int productPrice) {
  int totalCost = productPrice * productQuantity;
  print('$totalCost');
}

bool isValid(int productID, int productPrice) {
  return productPrice > 0 &&
      (productID == 101 || productID == 202 || productID == 303);
}

List<int?> readTheInput(String userInput, int totalInputCount) {
  if (userInput.isNotEmpty) {
    List<int?> values =
        userInput.split(' ').map((value) => int.tryParse(value)).toList();
    return values.length == totalInputCount ? values : [];
  }
  return [];
}
