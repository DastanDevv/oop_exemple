/*
Цикл for - он позволяет выполнять определенные действия основываясь на условии в ()ке
() - есть три разные части 
1- нужна какая та переменная int i = 0;
2- слудует условия
3- что делать при каждом проходе цикла

*/
void main() {
  // for (int i = 0; i < 5; i++) {
  //   print(i);

  List<int> scores = [70, 20, 30, 55, 50];
  // for (int i = 0; i < scores.length; i++) {
  //   print(scores[i]);
  // }

  // for (int score in scores) {
  //   if (score > 50) {
  //     print('the score is $score ');
  //   } else {
  //     print(' score not high than 50');
  //   }
  // }
// возмем только те балы которые превышает 50
  for (int score in scores.where((s) => s > 50)) {
    print('the score is $score ');
  }
}
