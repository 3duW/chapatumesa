class Reserva {
  int? id;
  String fecha;
  String hora;
  int clienteId;
  String tipoMesa;

  Reserva(
      {this.id,
      required this.fecha,
      required this.hora,
      required this.clienteId,
      required this.tipoMesa});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fecha': fecha,
      'hora': hora,
      'clienteId': clienteId,
      'tipoMesa': tipoMesa,
    };
  }

  factory Reserva.fromMap(Map<String, dynamic> map) {
    return Reserva(
      id: map['id'],
      fecha: map['fecha'],
      hora: map['hora'],
      clienteId: map['clienteId'],
      tipoMesa: map['tipoMesa'],
    );
  }
}
