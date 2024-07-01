class Mesa {
  int? id;
  int numeroMesa;
  int capacidad;

  Mesa({this.id, required this.numeroMesa, required this.capacidad});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'numeroMesa': numeroMesa,
      'capacidad': capacidad,
    };
  }

  factory Mesa.fromMap(Map<String, dynamic> map) {
    return Mesa(
      id: map['id'],
      numeroMesa: map['numeroMesa'],
      capacidad: map['capacidad'],
    );
  }
}
