import 'dart:io';

double? safeDivide(num numerator, num? denominator) {
  if (denominator == null || denominator == 0) {
    print("Cannot divide by zero!");
    return null;
  }
  return numerator / denominator;
}

void main() {
  try {
    stdout.write("Enter the numerator: ");
    num numerator = num.parse(stdin.readLineSync()!);

    stdout.write("Enter the denominator: ");
    num? denominator = num.tryParse(stdin.readLineSync()!);

    double? result = safeDivide(numerator, denominator);

    if (result != null) {
      print("Result: $result");
    }
  } catch (e) {
    print("Invalid input! Please enter numeric values.");
  }
}
