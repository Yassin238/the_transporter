class Driver {
  final String idDriver;
  final String name;
  final String licenseNumber;
  final String phoneNumber;
  final String email;

  Driver({
    required this.idDriver,
    required this.name,
    required this.licenseNumber,
    required this.phoneNumber,
    required this.email,
  });

  factory Driver.fromJson(Map<String, dynamic> json) {
    return Driver(
      idDriver: json['idDriver'],
      name: json['name'],
      licenseNumber: json['licenseNumber'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDriver': idDriver,
      'name': name,
      'licenseNumber': licenseNumber,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }
}
