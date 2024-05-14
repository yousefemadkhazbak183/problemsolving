
import 'dart:io';

bool testContainsValue(List<int>arr, int num){
  for(int i = 0; i < arr.length; i++){
    if(num == arr[i]){
      return true;
    }
  }
  return false;
}

void main(){
  List<int> arr = [2, 3, 4, 6];
  print("Enter a Number: ");
  int num = int.parse(stdin.readLineSync());
  if(testContainsValue(arr, num) == true){
    print('yes!');
  } else{
    print('NO!');
  }
}

