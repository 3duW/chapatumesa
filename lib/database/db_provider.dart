import '../models/cliente.dart';
import 'db_helper.dart';

class DBProvider {
  final DBHelper _dbHelper = DBHelper();

  Future<int> insertCliente(Cliente cliente) async {
    final db = await _dbHelper.database;
    return await db!.insert('cliente', cliente.toMap());
  }

  Future<List<Cliente>> fetchClientes() async {
    final db = await _dbHelper.database;
    final List<Map<String, dynamic>> maps = await db!.query('cliente');
    return List.generate(maps.length, (i) => Cliente.fromMap(maps[i]));
  }

  // Similar methods for Reserva and Mesa
}
