/*
  This program to calculate the average value of array elements.
 */

import 'dart:io';

double calcAverage(){
  // How much element in array?
  print('Enter how number for element array: ');
  int num = int.parse(stdin.readLineSync());

  int sum = 0;

  // Create Array.
  List<int> arr = [];
  print("Enter element array: ");
  for(int i =  0; i < num; i++){
    int element = int.parse(stdin.readLineSync());
    arr.add(element);
    sum += element;
  }
  
  double average = sum / num;
  print('Average: $average');
}

void main(){
  // main function.
  calcAverage();
}