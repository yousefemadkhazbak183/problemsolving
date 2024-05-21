
// Sum between numbers
int sumation(int num1, int num2){
  int sum = num1 + num2;
  print('Sum: $sum');
  return sum;
}

// subtract
int subtract(int num1, int num2){
  int sub = num1 - num2;
  print('Sub: $sub');
  return sub;
}

// multiply
double multiply(double num1, num2){
  double multi = num1 * num2;
  print('Multi: $multi');
  return multi;
}

// Divided
double divided(double num1, double num2){
  double div = num1 / num2;
  if(num2 == 0){ // Check condition.
    print("can't divided by zero");
  }
  else if(num2 < 0){
    print("can't divided by negative");
  }
  else{
    print('Div: $div');
    return div;
  }
}

void main(){
  sumation(3, 2);
  subtract(10, 5);
  multiply(10, 5);
  divided(15, 3);
}