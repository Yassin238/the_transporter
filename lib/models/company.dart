class Company {
  final String idCompany;
  final String name;
  final String address;
  final String phoneNumber;
  final String email;

  Company({
    required this.idCompany,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.email,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      idCompany: json['idCompany'],
      name: json['name'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idCompany': idCompany,
      'name': name,
      'address': address,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }
}
