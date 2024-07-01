class Cliente {
  int? id;
  String nombre;
  String apellido;
  String telefono;

  Cliente(
      {this.id,
      required this.nombre,
      required this.apellido,
      required this.telefono});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'apellido': apellido,
      'telefono': telefono,
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'],
      nombre: map['nombre'],
      apellido: map['apellido'],
      telefono: map['telefono'],
    );
  }
}
