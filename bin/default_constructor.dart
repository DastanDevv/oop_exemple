void main() {}

class Laptop {
  String? brend;
  int? prize;

  Laptop() {
    print('this is default constructor');
  }
}

class Student {
  String? name;
  int? age;
  String? schoolName;
  String? grande;
}

class User {
  // 1.1)Defaut constructor болсо
// дефолту бар мисалы эгерде бербесе ушул деп кетет.мисалы биздин
//Userибиз нация деген жерди жазбаса по умолчанию кыргыз деп кетсин
  User(
    this.name,
    this.finalName,
    this.age,
    this.profession,
    this.password, [
    this.nation = 'Kyrgyz', //здесь по умолчанию будет кыргыз
    this.tuulganJer =
        'Kyrgyzstan', //tuulganJer будет тоже по умолчанию Kyrgyzstan
  ]);

  final String name;
  final String finalName;
  final int age;
  final String nation;
  final String profession;
  final String tuulganJer;
  final String password;
}
