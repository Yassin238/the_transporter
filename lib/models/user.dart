class User {
  String idUser;
  String nom;
  String prenom;
  String idTypeCompte;
  String login;
  String password;

  User({
    required this.idUser,
    required this.nom,
    required this.prenom,
    required this.idTypeCompte,
    required this.login,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      idUser: json['idUser'],
      nom: json['nom'],
      prenom: json['prenom'],
      idTypeCompte: json['idTypeCompte'],
      login: json['login'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idUser': idUser,
      'nom': nom,
      'prenom': prenom,
      'idTypeCompte': idTypeCompte,
      'login': login,
      'password': password,
    };
  }
}
