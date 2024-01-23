/*
Класс - это схема для создания объектов. Класс определяет свойства и методы, 
которыми будет обладать объект. 
Объект - это экземпляр класса. Вы можете создать несколько объектов одного класса.
Синтаксис объекта: ClassName objectName = ClassName();
*/

void main() {
  Dog dog = Dog();
  dog.name = 'Aktosh';
  dog.color = 'black';
  dog.age = 2;
  dog.eat();
  Cat cat = Cat();
  cat.name = 'Ledy';
  cat.color = 'white';
  cat.age = 1;
  cat.eat();

  Rectangle rectangle = Rectangle();
  rectangle.width1 = 10;
  rectangle.height1 = 20;
  rectangle.width2 = 30;
  rectangle.height2 = 40;
  print("Area: ${rectangle.calculateArea()}");

  Home home = Home();
  home.name = 'Penthouse';
  home.address = 'Kyrgyzstan';
  home.numberOfRooms = 9;
  home.display();
}

// Example 1
class Cat {
  String? name;
  String? color;
  int? age;

  void eat() {
    print('May eat');
  }
}

class Dog {
  String? name;
  String? color;
  int? age;
  void eat() {
    print('Dog eat');
  }
}

// Example 2
class Rectangle {
  double? width1;
  double? height1;
  double? width2;
  double? height2;

  double calculateArea() {
    return (width1! * height1!) + (width2! * height2!);
  }
}

// challenge

class Home {
  String? name;
  String? address;
  int? numberOfRooms;

  void display() {
    print('Name: $name');
    print('Address: $address');
    print('Number of rooms: $numberOfRooms');
  }
}
