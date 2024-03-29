// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
Конструктор (constructor) - это специальный метод, 
который вызывается при создании нового объекта класса.
 Он используется для инициализации состояния объекта.
 Основные особенности конструктора:
 - Имя конструктора совпадает с именем класса. Например, 
 для класса Car конструктор будет называться Car().
 - Конструктор может вызывать другие конструкторы того же класса через this().
 Таким образом, конструктор позволяет корректно инициализировать
 новый объект при создании, установив начальные значения для полей и свойств. Это важный механизм ООП.
*/

void main() {
  // так мы напишем с конструктором
  DartProgramming dart = DartProgramming('Dastan', 18, 'flutter');
  //так мы напишем без конструктора
  dart.name = 'Dastan';
  dart.age = 18;
  dart.framework = 'Flutter';

  dart.whiteCode();

  Teacher teacher1 = Teacher("John", 30, "Maths", 50000.0);
  teacher1.display();
  Teacher teacher2 = Teacher("Smith", 35, "Science", 60000.0);
  teacher2.display();

  Chair chair1 = Chair("Black", "Chair 1");
  chair1.display();
  Chair chair2 = Chair("White", "Chair 2");
  chair2.display();

  Patient patient1 = Patient("John", 30, "Covid");
  patient1.display();
  Patient patient2 = Patient("Smith", 35, "Diabetes");
  patient2.display();
}

class DartProgramming {
  // Конструктор
  DartProgramming(this.name, this.age, this.framework);

  String? name;
  int? age;
  String? framework;

  void whiteCode() {
    print("""void main(){
          print("Hello $name");
        }""");
  }
}

class Teacher {
  Teacher(
    this.name,
    this.age,
    this.subject,
    this.salary,
  );
  String? name;
  int? age;
  String? subject;
  double? salary;

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");

    
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}\n");
  }
}

class Chair {
  Chair(this.color, this.name);
  String name;
  String color;

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

class Patient {
  Patient(this.name, this.age, this.disease);
  String name;
  int age;
  String disease;

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Disease: ${this.disease}");
  }
}
