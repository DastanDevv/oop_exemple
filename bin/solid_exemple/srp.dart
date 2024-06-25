// Принцип единственной ответственности означает, что каждый класс должен заниматься только одной вещью.
// Если у класса есть несколько задач, то при изменении одной из этих задач придется менять весь класс,
// что может привести к ошибкам и сложностям в поддержке кода.
// Чтобы этого избежать, нужно разделять разные задачи между разными классами.

// создать класс, который будет и отображать список, и загружать данные:

// class UserListWidget extends StatefulWidget {
//   @override
//   _UserListWidgetState createState() => _UserListWidgetState();
// }

// class _UserListWidgetState extends State<UserListWidget> {
//   List<String> _users = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadUsers();
//   }

//   void _loadUsers() async {
//     // Здесь происходит загрузка данных
//     _users = await fetchUsersFromApi();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: _users.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(_users[index]),
//         );
//       },
//     );
//   }

//   Future<List<String>> fetchUsersFromApi() async {
//     // Имитируем загрузку данных из интернета
//     await Future.delayed(Duration(seconds: 2));
//     return ['User 1', 'User 2', 'User 3'];
//   }
// }
// В этом примере класс UserListWidget занимается двумя вещами: загрузкой данных и отображением списка. Это нарушение SRP.

// Разделим обязанности
// Чтобы следовать принципу единственной ответственности, нужно разделить эти задачи на два разных класса:
// один для загрузки данных, другой для отображения.

// Сервис для загрузки данных:

// class UserService {
//   Future<List<String>> fetchUsersFromApi() async {
//     // Имитируем загрузку данных из интернета
//     await Future.delayed(Duration(seconds: 2));
//     return ['User 1', 'User 2', 'User 3'];
//   }
// }

// // Виджет для отображения списка:
// class UserListWidget extends StatefulWidget {
//   @override
//   _UserListWidgetState createState() => _UserListWidgetState();
// }

// class _UserListWidgetState extends State<UserListWidget> {
//   List<String> _users = [];
//   final UserService _userService = UserService();

//   @override
//   void initState() {
//     super.initState();
//     _loadUsers();
//   }

//   void _loadUsers() async {
//     _users = await _userService.fetchUsersFromApi();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: _users.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(_users[index]),
//         );
//       },
//     );
//   }
// }

// Теперь у нас есть два класса:

// DataService, который отвечает только за загрузку данных.
// ItemListWidget, который отвечает только за отображение данных.