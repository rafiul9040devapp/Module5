import 'dart:io';
import 'dart:math';

void main() {
  print('Enter the number of Wheels, Car Body & People: ');
  String inputValues = stdin.readLineSync() ?? '';
  List<int?> values = inputValues.split(' ').map(int.tryParse).toList();

  if (isValidInput(values)) {
    int wheels = calculateValue(values[0], 4);
    int people = calculateValue(values[2], 2);
    int carBody = values[1] ?? 1;

    findTheActualNumberOfCar(carBody, wheels, people);
  } else {
    print("Invalid input. Please enter three valid integers.");
  }
}

bool isValidInput(List<int?> values) {
  return values.length == 3 && values.every((element) => element != null);
}

int calculateValue(int? value, int divisor, {int defaultValue = 1}) {
  return (value ?? defaultValue) ~/ divisor;
}

void findTheActualNumberOfCar(int carBody, int wheels, int people) {
  int actualCarNumber = min(carBody, min(wheels, people));
  print(actualCarNumber);
}
