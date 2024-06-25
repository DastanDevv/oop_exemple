// Interface Segregation Principle (ISP) — Принцип разделения интерфейса
// Пример с соблюдением ISP
// Создадим отдельные интерфейсы для работы с сетью и базой данных:
abstract class NetworkService {
  Future<void> fetchDataFromNetwork();
}

abstract class DatabaseService {
  Future<void> saveDataToDatabase();
  Future<void> loadDataFromDatabase();
}
// Реализуем интерфейсы в классах:

class NetworkServiceImpl implements NetworkService {
  @override
  Future<void> fetchDataFromNetwork() async {
    print('Fetching data from network...');
    // Реализация загрузки данных из сети
  }
}

class DatabaseServiceImpl implements DatabaseService {
  @override
  Future<void> saveDataToDatabase() async {
    print('Saving data to database...');
    // Реализация сохранения данных в базу данных
  }

  @override
  Future<void> loadDataFromDatabase() async {
    print('Loading data from database...');
    // Реализация загрузки данных из базы данных
  }
}

// Обновим клиентов, чтобы они зависели от нужных интерфейсов:

class NetworkClient {
  final NetworkService networkService;

  NetworkClient(this.networkService);

  void fetchData() {
    networkService.fetchDataFromNetwork();
  }
}

class DatabaseClient {
  final DatabaseService databaseService;

  DatabaseClient(this.databaseService);

  void saveData() {
    databaseService.saveDataToDatabase();
  }

  void loadData() {
    databaseService.loadDataFromDatabase();
  }
}
