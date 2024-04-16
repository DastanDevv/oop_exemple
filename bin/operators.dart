// import 'dart:io';

/* Арифметические операторы: +,-,*,/
 Реляционные операторы ==, !=, >, <, >=, <=
 Логические операторы: and-&&, or-||, not-! Операторы присваивания: =, +=, -=, *=, /=, %=
 Тернарный оператор: ?:
*/

/*задачи для Арифметические операторы :
 void main() {
   print('Enter 1 numbers:');
   double num1 = double.parse(stdin.readLineSync()!);

  print('Enter 2 numbers:');
  double num2 = double.parse(stdin.readLineSync()!);
   print(num1 + num2);
   print(num1 - num2);
  print(num1 * num2);
  print(num1 ~/ num2);
 }
*/

// void main() {
//   print(calculate(12, 8));
// }

// int calculate(int a, int b) {
//   return a * b;
// }

//  вычисления площади круга

import 'dart:io';

void main() {
  // trygle();
  // Запросить у пользователя два числа
  print('Введите первое число:');
  double firstNumber = double.parse(stdin.readLineSync()!);

  print('Введите второе число:');
  double secondNumber = double.parse(stdin.readLineSync()!);

  // Проверить условия и вывести соответствующее сообщение
  if (firstNumber > secondNumber) {
    print('$firstNumber больше, чем $secondNumber');
  } else if (firstNumber < secondNumber) {
    print('$firstNumber меньше, чем $secondNumber');
  } else {
    print('$firstNumber равно $secondNumber');
  }
}

// trygle() {
//   double radius = 5;
//   double pi = 3.14;
//   double area = pi * radius * radius;
//   print("Area of circle: $area");
// }
// Цельсия в градусы Фаренгейта
// void main() {
//   dynamic cel = 12;
//   dynamic far = (cel * 9 / 5) + 32;
//   print(far);
// }

// задачи по Реляционные операторы

