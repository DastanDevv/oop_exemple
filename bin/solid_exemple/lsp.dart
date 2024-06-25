// Liskov Substitution Principle (LSP) — Принцип подстановки Барбары Лисков

// Принцип подстановки Барбары Лисков (LSP) гласит,
// что объекты в программе должны быть заменяемы экземплярами
// их подклассов без изменения правильности выполнения программы.
// Это означает, что если у вас есть базовый класс, то вы должны иметь
// возможность заменить его любым из его подклассов без каких-либо изменений
// в клиентском коде, использующем этот базовый класс.

// Рассмотрим пример, который нарушает LSP.
//  У нас есть базовый класс Bird и подкласс Penguin. Предположим,
//  у нас есть метод fly(), который логически применим к большинству птиц, но не к пингвинам.
// Пример с нарушением LSP
// class Bird {
//   void fly() {
//     print('Flying');
//   }
// }

// class Sparrow extends Bird {}

// class Penguin extends Bird {
//   @override
//   void fly() {
//     throw Exception('Penguins cannot fly!');
//   }
// }

// void letBirdFly(Bird bird) {
//   bird.fly();
// }

// void main() {
//   Bird sparrow = Sparrow();
//   Bird penguin = Penguin();

//   letBirdFly(sparrow); // Works fine
//   letBirdFly(penguin); // Throws an exception
// }

// // Пример с соблюдением LSP

// abstract class Bird {}

// abstract class Flyable {
//   void fly();
// }

// class Sparrow extends Bird with Flyable {
//   @override
//   void fly() {
//     print('Flying');
//   }
// }

// class Penguin extends Bird {
//   // Penguins don't implement Flyable
// }

// void letFly(Flyable flyable) {
//   flyable.fly();
// }

// void main() {
//   Bird sparrow = Sparrow();
//   Bird penguin = Penguin();

//   letFly(sparrow as Flyable);  // Works fine
//   // letFly(penguin as Flyable);  // This line is commented out because Penguin is not Flyable
// }
