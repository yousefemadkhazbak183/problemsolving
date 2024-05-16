/*
  This a program that reads student scores, gets the best score,
   and then assigns grades.
 */
// Calc Grades 
import 'dart:io';

String calculateGrade(int score, int bestScore) {
  if (score >= bestScore - 10) {
    return 'A';
  } else if (score >= bestScore - 20) {
    return 'B';
  } else if (score >= bestScore - 30) {
    return 'C';
  } else if (score >= bestScore - 40) {
    return 'D';
  } else {
    return 'F';
  }
}

void best_Score(){
  print('Enter how much students: ');
  int numOfStudent = int.parse(stdin.readLineSync());
  
  // List of student 
  List<int> scores = [];
  for(int i = 0; i < numOfStudent; i++){
    print('Enter the score for student ${i + 1}: ');
    int score = int.parse(stdin.readLineSync());
    scores.add(score);
  }

  int bestScore = scores[0];
  for(int i = 1; i < numOfStudent; i++){
    if(scores[i] > bestScore){
      bestScore = scores[i];
    }
  }

  // print scores
  for (int i = 0; i < numOfStudent; i++) {
    String grade = calculateGrade(scores[i], bestScore);
    print('Student ${i + 1} score is  ${scores[i]} and grade is $grade ');
  }
}

void main(){
  best_Score();
}

