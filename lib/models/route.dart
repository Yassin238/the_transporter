class Route {
  String idRoute;
  String emplacement;
  String denomination;
  DateTime dateDebut;
  DateTime dateFin;

  Route({
    required this.idRoute,
    required this.emplacement,
    required this.denomination,
    required this.dateDebut,
    required this.dateFin,
  });

  factory Route.fromJson(Map<String, dynamic> json) {
    return Route(
      idRoute: json['idRoute'],
      emplacement: json['emplacement'],
      denomination: json['denomination'],
      dateDebut: DateTime.parse(json['dateDebut']),
      dateFin: DateTime.parse(json['dateFin']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idRoute': idRoute,
      'emplacement': emplacement,
      'denomination': denomination,
      'dateDebut': dateDebut.toIso8601String(),
      'dateFin': dateFin.toIso8601String(),
    };
  }
}
