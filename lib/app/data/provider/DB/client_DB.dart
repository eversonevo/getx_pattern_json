import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _dbName = 'clients.db';
  static final _dbVersion = 1;
  static final clientId = 'clientId';
  static final clientName = 'clientName';
  static final clientPhone = 'clientPhone';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  Future<Database> get database async {
    print("passei database");
    return _database ??= await _initDatabase();
  }

  _initDatabase() async {
    print("entrei inicializacao)");
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $_dbName ("
        "$clientId INTEGER PRIMARY KEY,"
        "$clientName TEXT NOT NULL,"
        "$clientPhone TEXT NOT NULL)");
  }
}
