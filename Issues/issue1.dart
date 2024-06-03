// /*
// Enter Number and Count the number of steps required to make the Number
// equal to Zero.
// ->if Number is Odd decrease one from it
// ->If Number is Even divide it by 2
//
//  */


import 'dart:io';

int countStepsToZero(int num) {
  int steps = 0;
  while (num > 0) {
    if (num % 2 == 0) {
      num = num ~/ 2;
    } else {
      num -= 1;
    }
    steps++;
  }
  return steps;
}

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync());

  int count = countStepsToZero(number);
  print('Number of steps required to make $number equal to zero: $count');
}
