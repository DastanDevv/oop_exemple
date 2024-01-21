/* В объектно-ориентированном программировании объект - это
самодостаточная единица кода и данных. Объекты создаются из шаблонов,
называемых классами. Объект состоит из свойств (переменных) и методов (функций).
Синтаксис объекта: ClassName objectName = ClassName(); Объект - это экземпляр класса.
*/

void main() {
  Car bmw = Car();
  print(bmw);
  bmw.name = 'BMW';
  bmw.color = 'black';
  bmw.year = 2015;
  bmw.price = 100000;
  bmw.model = 'X5';
  bmw.drive();
  bmw.stop();

  print(bmw.name);
  print(bmw.color);
  print(bmw.year);
  print(bmw.price);
  print(bmw.model);
}

class Car {
  String? name;
  String? color;
  int? year;
  int? price;
  String? model;

  void drive() {
    print('drive');
  }

  void stop() {
    print('stop');
  }
}

class Person {
  String? name;
  String? surname;
  int? age;
  String? email;

  void sayHello() {
    print('Person Namme : $name');
    print('Person Surname : $surname');
    print('Person Age : $age');
    print('Person Email : $email');
  }
}
