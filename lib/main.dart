import 'package:flutter/material.dart';

import 'screens/clientes_screen.dart';

void main() {
  runApp(ChapatumesaApp());
}

class ChapatumesaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapatumesa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClientesScreen(),
    );
  }
}
