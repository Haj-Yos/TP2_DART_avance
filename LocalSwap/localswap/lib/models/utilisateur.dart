class Utilisateur {
  final String id;
  final String nom;
  final int reputation;

  const Utilisateur({
    required this.id,
    required this.nom,
    required this.reputation,
  });

  factory Utilisateur.fromJson(Map<String, dynamic> json) => Utilisateur(
        id: json['id'],
        nom: json['nom'],
        reputation: json['reputation'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'reputation': reputation,
      };

  @override
  String toString() =>
      'Utilisateur(id: $id, nom: $nom, reputation: $reputation)';
}