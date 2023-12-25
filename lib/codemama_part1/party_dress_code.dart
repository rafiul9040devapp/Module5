import 'dart:io';

void main() {
  print('Enter Your Dress Code: ');
  String? dressCode = stdin.readLineSync() ?? '';

  print('Enter Temperature: ');
  int? temperature = int.parse(stdin.readLineSync() ?? '0');

  dressCodeSuggestion(dressCode, temperature);
}

void dressCodeSuggestion(String dressCode, int temperature) {
  if (equalsIgnoreCase(dressCode, 'casual') &&
      (temperature >= 15 && temperature <= 25)) {
    print('Jeans and a light jacket.');
  } else if (equalsIgnoreCase(dressCode, 'festive') &&
      (temperature > 25 && temperature <= 40)) {
    print('Colorful dress and sandals.');
  } else {
    print('Wear what you\'re comfortable in.');
  }
}

bool equalsIgnoreCase(String string1, String string2) {
  return string1.toLowerCase() == string2.toLowerCase();
}
