/*
Класс в Dart
В объектно-ориентированном программировании класс - это план создания объектов. 
Класс определяет свойства и методы, которыми будет обладать объект. Например, 
класс "Человек" может иметь такие свойства, как имя, возраст, и такие методы, 
как говорить, бегать.
Класс - это схема для создания объектов.
Тело класса состоит из свойств и методов.

Объявление класса в Dart
Вы можете объявить класс в Dart, используя ключевое слово class, 
за которым следует имя класса и скобки {}. 
Внутри скобок мы можем указать свойства и методы, которые будут обладать объектом.
Хорошей привычкой является написание имени класса в PascalCase(стиль написания идентификаторов). 
Например:
MyVariableName
GetUserName
CalculateTotalPrice

//разница между методом и функцией это-
метод работает внутри класса а функция вне
*/

void main() {
  // DastanAlmazbekov person = DastanAlmazbekov();
  // person.name = 'Dastan';
  // person.surname = 'Almazbekov';
  // person.age = 18;
  // person.email = 'Dastan@bk.ru';
  // person.sayHello();
}

// Example 1
class DastanAlmazbekov {
// свойства или поля
  String? name;
  String? surname;
  int? age;
  String? email;

// метод
// У класса также есть метод sayHello, который выводит значения четырех свойств.
  void sayHello() {
    print('Person Name: $name');
    print('Person Surname: $surname');
    print('Person Age: $age');
    print('Person Email: $email');
  }
}

// Example 2

class Area {
  double? width;
  double? height;

  double calculateArea() {
    return width! * height!;
  }
}

// Example 3
// Challenge

class Book {
  String? name;
  String? author;
  int? prize;

  void display() {
    print('Name: $name');
    print('Author: $author');
    print('Prize: $prize');
  }
}
