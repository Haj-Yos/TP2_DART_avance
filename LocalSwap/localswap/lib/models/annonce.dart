enum CategorieAnnonce { objet, service, covoiturage }

enum StatutAnnonce { disponible, reservee, terminee }

class Annonce {
  final String id;
  final String titre;
  final String? description;
  final CategorieAnnonce categorie;
  final StatutAnnonce statut;
  final String idProprietaire;

  const Annonce({
    required this.id,
    required this.titre,
    this.description,
    required this.categorie,
    required this.statut,
    required this.idProprietaire,
  });

  factory Annonce.fromJson(Map<String, dynamic> json) => Annonce(
        id: json['id'],
        titre: json['titre'],
        description: json['description'],
        categorie: CategorieAnnonce.values.byName(json['categorie']),
        statut: StatutAnnonce.values.byName(json['statut']),
        idProprietaire: json['idProprietaire'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'titre': titre,
        'description': description,
        'categorie': categorie.name,
        'statut': statut.name,
        'idProprietaire': idProprietaire,
      };

  @override
  String toString() =>
      'Annonce(id: $id, titre: $titre, statut: ${statut.name})';
}