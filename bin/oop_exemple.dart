void main(List<String> arguments) {
  User dastan = User(
    'Dastan',
    'Dastanov',
    18,
    'Dastanov@bk.ru',
  );
  print(dastan.name);
  print(dastan.lateName);
  print(dastan.age);
  print(dastan.email);

  User almaz = User(
    'Almaz',
    'Dastanov',
    20,
    'Alamz@gmail.com',
  );
  print(almaz.name);
  print(almaz.lateName);
  print(almaz.age);
  print(almaz.email);
}

//class user это создаем свой класс {} кавычке пишем тело класса
class User {
  User(
    this.name,
    this.lateName,
    this.age,
    this.email,
  );

  String name;
  String lateName;
  int age;
  String email;
}
