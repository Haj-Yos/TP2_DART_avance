class Echange {
  final String id;
  final String idAnnonce;
  final String idDemandeur;
  final DateTime dateEchange;

  const Echange({
    required this.id,
    required this.idAnnonce,
    required this.idDemandeur,
    required this.dateEchange,
  });

  factory Echange.fromJson(Map<String, dynamic> json) => Echange(
        id: json['id'],
        idAnnonce: json['idAnnonce'],
        idDemandeur: json['idDemandeur'],
        dateEchange: DateTime.parse(json['dateEchange']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'idAnnonce': idAnnonce,
        'idDemandeur': idDemandeur,
        'dateEchange': dateEchange.toIso8601String(),
      };

  @override
  String toString() =>
      'Echange(id: $id, annonce: $idAnnonce, demandeur: $idDemandeur, date: $dateEchange)';
}