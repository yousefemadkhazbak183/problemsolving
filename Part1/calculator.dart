import 'dart:io';

// Function to perform addition
double add(double a, double b) {
  return a + b;
}

// Function to perform subtraction
double subtract(double a, double b) {
  return a - b;
}

// Function to perform multiplication
double multiply(double a, double b) {
  return a * b;
}

// Function to perform division
double divide(double a, double b) {
  if(b == 0){
    print('Error: division by zero');
    return double.nan; //  Return NaN (Not a Number) if division by zero.
  }
  else{
    return a / b;
  }
}

// Main function to run the calculator
void main() {
  print('Simple Dart Calculator');
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync());

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync());

  print('Enter an operator (+, -, *, /):');
  String operator = stdin.readLineSync();

  double result;

  switch (operator) {
    case '+':
      result = add(num1, num2);
      break;
    case '-':
      result = subtract(num1, num2);
      break;
    case '*':
      result = multiply(num1, num2);
      break;
    case '/':
      result = divide(num1, num2);
      break;
    default:
      print('Error: Invalid operator');
      return;
  }

  print('The result is: $result');
}
