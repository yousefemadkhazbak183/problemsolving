/*
 Write a program to take 2 integers from the user and
 find the Greatest Common Divisor of two numbers. (GCD)
 */

import 'dart:io';

int greatestCommonDivisor(int num, int num2) {
  while (num2 != 0) {
    int temp = num2;
    num2 = num % num2;
    num = temp;
  }
  return num;
}

void main() {
  print("Please enter two  number: ");
  int number = int.parse(stdin.readLineSync());
  int number2 = int.parse(stdin.readLineSync());

  int gcd = greatestCommonDivisor(number, number2);

  print('The GCD of $number and $number2 is: $gcd');
}
