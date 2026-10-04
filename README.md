# Healthy Recipes

Application mobile **Flutter** qui propose des recettes saines et guide l'utilisateur étape par étape dans leur réalisation. Elle s'adresse aux personnes qui veulent découvrir de nouvelles recettes ou adopter une alimentation plus équilibrée.

Projet réalisé en binôme dans le cadre du module R4.A.11 (développement mobile) de notre 2ᵉ année de BUT Informatique à l'IUT Paul Sabatier (Toulouse III).

## Fonctionnalités

- **Accueil** : présentation de l'application et accès rapide aux recettes
- **Liste des recettes** avec :
  - recherche par nom
  - filtre par temps de préparation maximum
  - filtre par temps de cuisson maximum
- **Détail d'une recette** : portions, temps de préparation et de cuisson, ingrédients et étapes de réalisation, avec une mise en page adaptée au mode paysage
- **À propos** : présentation du projet
- **Multilingue** : français, anglais et portugais, selon la langue du téléphone
- **Données locales** : les recettes sont stockées dans une base SQLite créée et remplie au premier lancement

## Stack technique

| Élément | Technologie |
|---|---|
| Framework | Flutter |
| Langage | Dart |
| Base de données | SQLite (`sqflite`) |
| Internationalisation | `flutter_localizations`, `intl` (fichiers ARB) |
| Interface | Material Design, `google_fonts`, `flutter_svg` |
| Plateformes | Android, iOS |

## Architecture

```
lib/
├── main.dart       Point d'entrée et navigation (routes nommées)
├── pages/          Écrans : accueil, recettes, détail d'une recette, à propos
├── widgets/        Composants réutilisables (barre de navigation, recherche, filtres, étapes, footer...)
├── modele/         Modèle Dish, accès à la base SQLite, traduction des recettes
├── themes/         Design system : couleurs, typographie, espacements, arrondis
└── l10n/           Traductions (fr, en, pt)
assets/images/      Photos des plats, illustrations et icônes
```

L'interface s'appuie sur un **design system** centralisé dans `themes/`, ce qui garantit une cohérence visuelle entre tous les écrans.

## Organisation du projet

- **Branches** : une branche par fonctionnalité (`feat/homepage`, `feat/about`, `feature/detailsRecette`...)
- **Intégration** : fusion dans `main` via merge requests sur GitLab
- **Commits** : messages préfixés par type (`feat`, `refact`, `test`...)

> Le projet ayant été développé sur le GitLab de l'IUT, les merge requests ne sont pas accessibles depuis ce dépôt. L'historique complet des commits est en revanche conservé.

## Compétences développées

| Domaine | Compétences |
|---|---|
| Développement mobile | Création d'une application Flutter multiplateforme, gestion d'état avec `StatefulWidget` |
| Interface | Composants réutilisables, design system, mise en page adaptative (portrait / paysage) |
| Données | Persistance locale avec SQLite, création et migration de schéma |
| Internationalisation | Traduction de l'interface et du contenu en 3 langues |
| Travail en équipe | Workflow Git avec branches de fonctionnalités et merge requests |

## Installation

### Prérequis
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart 3.11 ou plus)
- Un émulateur Android, un simulateur iOS (macOS uniquement) ou un téléphone branché en mode développeur

### Lancer l'application
```bash
git clone https://github.com/Marooneux/healthy-recipes.git
cd healthy-recipes
flutter pub get
flutter run
```

Les fichiers de traduction sont générés automatiquement à la compilation. Pour changer la langue de l'application, il suffit de changer celle du téléphone.

## Équipe

- [CUMBANE Claudio](https://github.com/claudio-narciso)
- [WACKER Luka](https://github.com/Marooneux)
