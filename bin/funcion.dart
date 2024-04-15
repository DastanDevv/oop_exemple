// Функуция void ничего не возвращает(то есть нет return)
void main() {
  final dastan1 = dastan('dastan', 20);
  print(dastan1);
  final nurba1 = nurba(name: 'nurba', age: 20, male: true);
  print(nurba1);
}

// dastan('dastan', 20); это аргументы функции
// (String name, int age) это параметры фукции
// Функция создается таким обзаром, скобке должен быть аргумент функции
// на return это что должно возвращаться в итоге
// эсли мы обявим функция просто dastan(){} то dart будет понят что фунция динамическая(dynamic)
// чтобы функция был конкретнного типа мы должны указать тип String dastan(String name, int age){}
dastan(String name, int age) {
  return "hi my name is $name and my age is $age";
}

// теперь есть понятие named parameter
// мы через него можем дать агрументы не последовтельно
// для этого мы должны взят на ковычки
// String? name - парамерт можно не передавать(не обязательно)
//  required age - параметр обязательно должен передаваться
String nurba({String? name, required age, bool? male}) {
  return "$name $age $male";
}
