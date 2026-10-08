import 'package:localswap/models/models.dart';

// Asynchrone : simule le chargement de 5 annonces de test
Future<List<Annonce>> chargerAnnonces({bool simulerErreur = false}) async {
  await Future.delayed(const Duration(seconds: 1)); // faux délai réseau

  if (simulerErreur) {
    throw Exception('Impossible de charger les annonces (erreur simulée)');
  }

  return const [
    Annonce(id: '1', titre: 'Vélo', categorie: CategorieAnnonce.objet,
        statut: StatutAnnonce.disponible, idProprietaire: 'u1'),
    Annonce(id: '2', titre: 'Cours de maths', description: 'Niveau lycée',
        categorie: CategorieAnnonce.service,
        statut: StatutAnnonce.reservee, idProprietaire: 'u2'),
    Annonce(id: '3', titre: 'Tunis → Sousse', categorie: CategorieAnnonce.covoiturage,
        statut: StatutAnnonce.disponible, idProprietaire: 'u1'),
    Annonce(id: '4', titre: 'Perceuse', categorie: CategorieAnnonce.objet,
        statut: StatutAnnonce.terminee, idProprietaire: 'u3'),
    Annonce(id: '5', titre: 'Aide déménagement', categorie: CategorieAnnonce.service,
        statut: StatutAnnonce.disponible, idProprietaire: 'u2'),
  ];
}

// Pure : true uniquement si le statut est "disponible"
bool peutReserver(Annonce annonce) =>
    annonce.statut == StatutAnnonce.disponible;