import 'dart:io';

void main() {
  print('Enter The Fruit ID: ');
  String? userInput = stdin.readLineSync() ?? '';
  int? fruitId = checkValidID(userInput) ?? 0;
  findFruitNameByID(fruitId);
}

int? checkValidID(String userInput) {
  if (userInput.isNotEmpty) {
    try {
      return int.parse(userInput, radix: 10);
    } catch (e) {
      print('Invalid Input. Please enter a valid integer.');
      return null;
    }
  } else {
    print('Empty Input. Please enter a valid integer.');
    return null;
  }
}

void findFruitNameByID(int fruitId) {
  switch (fruitId) {
    case 31231:
      print('Banana');
      break;
    case 43861:
      print('Elderberry');
      break;
    case 82678:
      print('Honeydew Melon');
      break;
    case 23456:
      print('Apple');
      break;
    case 78901:
      print('Mango');
      break;
    case 98765:
      print('Nectarine');
      break;
    case 45678:
      print('Orange');
      break;
    case 67890:
      print('Raspberry');
      break;
    case 21098:
      print('Tangerine');
      break;
    default:
      print('Invalid Fruit ID');
  }
}