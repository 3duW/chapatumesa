import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;
  DBHelper._internal();

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDB();
    return _database;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'chapatumesa.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE cliente(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT,
        apellido TEXT,
        telefono TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE reserva(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        fecha TEXT,
        hora TEXT,
        clienteId INTEGER,
        tipoMesa TEXT,
        FOREIGN KEY(clienteId) REFERENCES cliente(id)
      )
    ''');
    await db.execute('''
      CREATE TABLE mesa(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        numeroMesa INTEGER,
        capacidad INTEGER
      )
    ''');
  }
}
