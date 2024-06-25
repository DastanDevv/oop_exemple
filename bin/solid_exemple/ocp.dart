// Open/Closed Principle (OCP) — Принцип открытости/закрытости
// Принцип открытости/закрытости (OCP) гласит, что программные сущности (классы, модули, функции и т.д.)
// должны быть открыты для расширения, но закрыты для модификации.
// Это значит, что поведение сущности можно изменять и дополнять,
// не меняя её исходный код. В контексте Flutter (и Dart) это означает, что вы должны стремиться к созданию компонентов,
// которые могут быть расширены без изменения их исходного кода.

// Пример с нарушением OCP

class ShapeCalculator {
  double calculateArea(String shape, double size) {
    if (shape == 'circle') {
      return 3.14 * size * size;
    } else if (shape == 'square') {
      return size * size;
    }
    // Если мы добавим новую фигуру, нам придется изменить этот метод
    return 0;
  }
}

// void main() {
//   final calculator = ShapeCalculator();
//   print(calculator.calculateArea('circle', 5));
//   print(calculator.calculateArea('squre', 5));
// }

// Если нужно добавить новую фигуру, например, треугольник,
// нам придется изменить метод calculateArea, что нарушает принцип OCP.

// Пример с соблюдением OCP
// Базовый класс для фигур:
abstract class Shape {
  double calculateArea();
}
// Классы для конкретных фигур:

class Circle extends Shape {
  final double radius;

  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

// Расчет площади через полиморфизм:

void main() {
  final shapes = <Shape>[
    Circle(5),
    Square(5),
  ];
  for (var shape in shapes) {
    print(shape.calculateArea());
  }
}

// Теперь, если нужно добавить новую фигуру, например,
// треугольник, мы просто создаем новый класс, наследующий Shape,
// и реализуем метод calculateArea:

class Triangle extends Shape {
  final double base;
  final double height;

  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}

// Добавление новой фигуры не требует изменения существующего кода,
//  а лишь добавление нового класса. Это делает систему расширяемой без модификации уже работающего кода.