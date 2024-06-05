class Vehicle {
  final String idVehicle;
  final String make;
  final String model;
  final String licensePlate;
  final int capacity;

  Vehicle({
    required this.idVehicle,
    required this.make,
    required this.model,
    required this.licensePlate,
    required this.capacity,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      idVehicle: json['idVehicle'],
      make: json['make'],
      model: json['model'],
      licensePlate: json['licensePlate'],
      capacity: json['capacity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idVehicle': idVehicle,
      'make': make,
      'model': model,
      'licensePlate': licensePlate,
      'capacity': capacity,
    };
  }
}
