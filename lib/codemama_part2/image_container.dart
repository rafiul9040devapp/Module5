import 'dart:io';

void main() {
  String? userInputImageWidth = stdin.readLineSync() ?? '';
  int? imageWidth = checkValidityOfInput(userInputImageWidth) ?? 0;

  if (isImageWidthWithinTheRange(imageWidth)) {
    leftMarginOfTheContainer(imageWidth);
  } else {
    print('Invalid Image Width.');
  }
}

int? checkValidityOfInput(String userInputImageWidth) {
  if (userInputImageWidth.isNotEmpty) {
    try {
      return int.parse(userInputImageWidth, radix: 10);
    } catch (e) {
      print('Invalid Input. Please enter a valid integer.');
      return null;
    }
  } else {
    print('Empty Input. Please enter a valid integer.');
    return null;
  }
}

bool isImageWidthWithinTheRange(int imageWidth) {
  return imageWidth >= 400 && imageWidth <= 1600 && imageWidth % 10 == 0;
}

void leftMarginOfTheContainer(int imageWidth) {
  int containerWidth = 1000;
  int leftOverSpace = containerWidth - imageWidth;
  if (leftOverSpace > 0) {
    int leftMargin = leftOverSpace ~/ 2;
    print('$leftMargin');
  } else {
    print('0');
  }
}
