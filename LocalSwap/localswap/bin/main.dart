import 'package:localswap/services/annonces.dart';

void main() async {
  print('Chargement des annonces...');

  final annonces = await chargerAnnonces();

  print('${annonces.length} annonces chargées.');

  for (final annonce in annonces) {
    print(
      '${annonce.titre} → ${annonce.statut} → '
      'Réservable : ${peutReserver(annonce)}',
    );
  }
}