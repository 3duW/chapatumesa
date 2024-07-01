import 'package:flutter/material.dart';

import '../database/db_provider.dart';
import '../models/cliente.dart';

class ClientesScreen extends StatefulWidget {
  @override
  _ClientesScreenState createState() => _ClientesScreenState();
}

class _ClientesScreenState extends State<ClientesScreen> {
  final DBProvider _dbProvider = DBProvider();
  List<Cliente> _clientes = [];

  @override
  void initState() {
    super.initState();
    _fetchClientes();
  }

  Future<void> _fetchClientes() async {
    final clientes = await _dbProvider.fetchClientes();
    setState(() {
      _clientes = clientes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: ListView.builder(
        itemCount: _clientes.length,
        itemBuilder: (context, index) {
          final cliente = _clientes[index];
          return ListTile(
            title: Text('${cliente.nombre} ${cliente.apellido}'),
            subtitle: Text(cliente.telefono),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new client functionality
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
