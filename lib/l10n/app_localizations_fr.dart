// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get test => 'Salut, je suis fichier en français';

  @override
  String get navHome => 'Accueil';

  @override
  String get navAbout => 'A propos';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get homeHeroTitle => 'Des repas sains, sans effort';

  @override
  String get homeHeroDescription =>
      'Decouvrez nos recettes rapides et naturelles a cuisiner ce soir, sans produits ultra-transformes ni prise de tete.';

  @override
  String get homeStartExploring => 'Commencer';

  @override
  String get homeBenefitsTitle => 'Ce que vous obtenez';

  @override
  String get homeFeatureWholeFoodTitle => 'Recettes naturelles';

  @override
  String get homeFeatureWholeFoodDescription =>
      'Chaque plat utilise des ingredients du quotidien, non transformes.';

  @override
  String get homeFeatureMinimumFussTitle => 'Un minimum d\'effort';

  @override
  String get homeFeatureMinimumFussDescription =>
      'Toutes les recettes sont pensees pour manger sainement, vite et facilement.';

  @override
  String get homeFeatureSearchTitle => 'Recherche en quelques secondes';

  @override
  String get homeFeatureSearchDescription =>
      'Filtrez par nom ou par temps de preparation et trouvez directement la recette qu\'il vous faut.';

  @override
  String get homeBuiltForLifeTitle => 'Concu pour la vraie vie';

  @override
  String get homeBuiltForLifeParagraph1 =>
      'Cuisiner ne devrait pas etre complique. Ces recettes sont simples, adaptees aux emplois du temps charges et assez bonnes pour etre refaites.';

  @override
  String get homeBuiltForLifeParagraph2 =>
      'Que vous debutiez en cuisine ou que vous cherchiez de nouvelles idees, on est la pour vous.';

  @override
  String get homeFeatureIconSemanticsLabel => 'Logo Dart';

  @override
  String get recipesPageTitle => 'Explorez nos recettes';

  @override
  String get recipesPageDescription =>
      'Decouvrez nos plats rapides et savoureux. Utilisez la barre de recherche pour trouver une recette par nom, temps de preparation ou de cuisson, ou faites simplement defiler la liste.';

  @override
  String get recipesFilterAny => 'Peu importe';

  @override
  String get recipesFilter15Mins => '15 min';

  @override
  String get recipesFilter30Mins => '30 min';

  @override
  String get recipesFilter45Mins => '45 min';

  @override
  String get recipesFilter60Mins => '60 min';

  @override
  String get recipesFilterMaxPreparation => 'Temps de preparation max';

  @override
  String get recipesFilterMaxCooking => 'Temps de cuisson max';

  @override
  String get recipesSearchHint => 'Rechercher par nom...';

  @override
  String recipeCardPortions(Object count) {
    return 'Portions : $count';
  }

  @override
  String recipeCardPreparation(Object minutes) {
    return 'Preparation : $minutes min';
  }

  @override
  String recipeCardCooking(Object minutes) {
    return 'Cuisson : $minutes min';
  }

  @override
  String get recipeCardViewRecipe => 'Voir la recette';

  @override
  String get recipeDetailIngredients => 'Ingredients';

  @override
  String get recipeDetailPreparation => 'Preparation';

  @override
  String recipeDetailPortions(Object count) {
    return 'Portions : $count';
  }

  @override
  String recipeDetailPreparationTime(Object minutes) {
    return 'Preparation : $minutes min';
  }

  @override
  String recipeDetailCuissonTime(Object minutes) {
    return 'Cuisson : $minutes min';
  }

  @override
  String get aboutHeadline =>
      'Aider davantage de personnes a cuisiner des repas nourrissants, plus souvent.';

  @override
  String get aboutIntro =>
      'Healthy Recipe Finder a ete cree pour prouver qu\'une alimentation saine peut etre pratique, abordable et vraiment delicieuse.';

  @override
  String get aboutIntroExtended =>
      'Nous proposons des plats rapides et naturels que tout le monde peut reussir, sans equipement sophistique ni raccourcis ultra-transformes, juste des ingredients simples et des etapes claires.';

  @override
  String get aboutWhyWeExistTitle => 'Pourquoi nous existons';

  @override
  String get aboutWhyWeExistReason1Title => 'Aller a l\'essentiel.';

  @override
  String get aboutWhyWeExistReason1Description =>
      'Internet regorge de recettes, pourtant beaucoup de personnes pressees finissent encore avec des plats a emporter ou industriels. Nous selectionnons une collection fiable pour que vous passiez moins de temps a chercher et plus de temps a cuisiner.';

  @override
  String get aboutWhyWeExistReason2Title =>
      'Donner confiance aux cuisines maison.';

  @override
  String get aboutWhyWeExistReason2Description =>
      'Quand vous choisissez ce que vous mangez, vous choisissez comment vous vous sentez. Chaque recette repose sur des ingredients bruts et environ une demi-heure de preparation active.';

  @override
  String get aboutWhyWeExistReason3Title => 'Rendre le sain attirant.';

  @override
  String get aboutWhyWeExistReason3Description =>
      'Des images de qualite montrent clairement le resultat attendu, parce qu\'on mange d\'abord avec les yeux et que la confiance compte.';

  @override
  String get aboutFoodPhilosophyTitle => 'Notre philosophie alimentaire';

  @override
  String get aboutFoodPhilosophyReason1Title =>
      'Des ingredients entiers avant tout.';

  @override
  String get aboutFoodPhilosophyReason1Description =>
      'Produits frais, cereales, legumes secs, herbes et bonnes matieres grasses sont la base de chaque recette.';

  @override
  String get aboutFoodPhilosophyReason2Title => 'Du gout sans compromis.';

  @override
  String get aboutFoodPhilosophyReason2Description =>
      'Les epices, les agrumes et la douceur naturelle remplacent l\'exces de sel, de sucre et d\'additifs.';

  @override
  String get aboutFoodPhilosophyReason3Title => 'Le respect du temps.';

  @override
  String get aboutFoodPhilosophyReason3Description =>
      'Les repas de semaine doivent s\'integrer aux vrais emplois du temps. Le week-end peut etre plus lent, mais jamais gaspilleur.';

  @override
  String get aboutFoodPhilosophyReason4Title => 'Des choix durables.';

  @override
  String get aboutFoodPhilosophyReason4Description =>
      'Des listes d\'ingredients courtes reduisent le gaspillage alimentaire et l\'empreinte carbone, tandis que les plats a base vegetale menagent la planete.';

  @override
  String get aboutBeyondPlateTitle => 'Au-dela de l\'assiette';

  @override
  String get aboutBeyondPlateIntro =>
      'Nous croyons que la nourriture est un moteur de lien social et de bien-etre. En partageant des recettes accessibles, nous esperons :';

  @override
  String get aboutBeyondPlatePoint1 =>
      'Encourager les repas en famille et la cuisine partagee.';

  @override
  String get aboutBeyondPlatePoint2 =>
      'Reduire la dependance aux emballages jetables et aux dechets de livraison.';

  @override
  String get aboutBeyondPlatePoint3 =>
      'Susciter la curiosite pour les produits de saison et l\'agriculture locale.';

  @override
  String get ctaTitle => 'Pret a cuisiner plus malin ?';

  @override
  String get ctaDescription =>
      'Cliquez, choisissez une recette et servez le diner rapidement.';

  @override
  String get ctaBrowseRecipes => 'Parcourir les recettes';

  @override
  String get dishTsuvianTitle => 'Tsuvian';

  @override
  String get dishTsuvianDescription =>
      'Le tsuvian est un plat mongol traditionnel a base de nouilles et de viande.';

  @override
  String get dishTsuvianIngredients =>
      '200 g de nouilles au choix||300 g de boeuf en lamelles||1 oignon emince||2 carottes en julienne||1 poivron rouge en des||2 gousses d\'ail||2 c. a soupe d\'huile vegetale||Sel et poivre';

  @override
  String get dishTsuvianSteps =>
      'Chauffez l\'huile dans une grande poele ou un wok a feu vif. Faites revenir l\'oignon et l\'ail pendant 2 minutes.||Ajoutez les lamelles de boeuf et faites sauter jusqu\'a coloration, environ 5 minutes.||Ajoutez les carottes et le poivron. Melangez et cuisez encore 5 minutes.||Ajoutez les nouilles crues avec un verre d\'eau. Melangez, couvrez et laissez cuire a feu moyen 15 a 20 minutes en remuant regulierement.||Assaisonnez avec le sel et le poivre. Servez chaud.';

  @override
  String get dishRatatouilleTitle => 'Ratatouille';

  @override
  String get dishRatatouilleDescription =>
      'La ratatouille est un ragoût de legumes provencal classique du sud de la France.';

  @override
  String get dishRatatouilleIngredients =>
      '1 aubergine||2 courgettes||1 poivron rouge||1 poivron jaune||3 tomates||1 oignon||2 gousses d\'ail||Huile d\'olive||Herbes de Provence||Sel et poivre';

  @override
  String get dishRatatouilleSteps =>
      'Coupez tous les legumes en des.||Faites revenir l\'oignon et l\'ail dans l\'huile d\'olive pendant 3 minutes.||Ajoutez l\'aubergine et cuisez 5 minutes.||Ajoutez les courgettes, les poivrons et les tomates.||Assaisonnez avec les herbes de Provence, le sel et le poivre.||Couvrez et laissez mijoter a feu doux pendant 35 minutes.';

  @override
  String get dishQuicheLorraineTitle => 'Quiche Lorraine';

  @override
  String get dishQuicheLorraineDescription =>
      'La quiche lorraine est une tarte salee francaise classique preparee avec des lardons et de la creme.';

  @override
  String get dishQuicheLorraineIngredients =>
      '1 pate brisee||200 g de lardons||3 oeufs||200 ml de creme entiere||200 ml de lait||100 g de gruyere rape||Sel, poivre et noix de muscade';

  @override
  String get dishQuicheLorraineSteps =>
      'Prechauffez le four a 180 °C.||Etalez la pate dans un moule a tarte.||Faites revenir les lardons a sec jusqu\'a legere coloration.||Melangez les oeufs, la creme et le lait. Assaisonnez.||Repartissez les lardons sur la pate puis versez l\'appareil par-dessus.||Saupoudrez de gruyere rape.||Enfournez 35 minutes jusqu\'a ce que la quiche soit doree.';

  @override
  String get dishPelmeniTitle => 'Pelmeni';

  @override
  String get dishPelmeniDescription =>
      'Les pelmeni sont des raviolis russes traditionnels farcis de viande hachee assaisonnee, bouillis et servis avec du beurre ou de la creme fraiche.';

  @override
  String get dishPelmeniIngredients =>
      '300 g de farine||1 oeuf||150 ml d\'eau tiede||1 c. a cafe de sel (pour la pate)||250 g de boeuf hache||250 g de porc hache||1 oignon finement rape||Sel et poivre||Beurre et creme fraiche pour servir';

  @override
  String get dishPelmeniSteps =>
      'Melangez la farine, l\'oeuf, l\'eau et le sel jusqu\'a obtenir une pate lisse. Couvrez et laissez reposer 30 minutes.||Melangez le boeuf, le porc, l\'oignon rape, le sel et le poivre pour preparer la farce.||Etalez finement la pate et decoupez des disques d\'environ 7 cm de diametre.||Deposez une petite cuilleree de farce au centre de chaque disque.||Repliez la pate et pincez bien les bords, puis joignez les deux extremites pour former un croissant.||Portez une grande casserole d\'eau salee a ebullition. Cuisez les pelmeni par lots pendant 8 a 10 minutes jusqu\'a ce qu\'ils remontent a la surface et soient cuits.||Servez chaud avec une noix de beurre et une cuilleree de creme fraiche.';

  @override
  String get dishShakshukaTitle => 'Shakshuka';

  @override
  String get dishShakshukaDescription =>
      'La shakshuka est un plat d\'Afrique du Nord et du Moyen-Orient compose d\'oeufs poches dans une sauce tomate et poivron epicee.';

  @override
  String get dishShakshukaIngredients =>
      '6 oeufs||400 g de tomates concassees en conserve||2 poivrons rouges en des||1 oignon en des||3 gousses d\'ail emincees||1 c. a cafe de cumin||1 c. a cafe de paprika||1/2 c. a cafe de flocons de piment||2 c. a soupe d\'huile d\'olive||Sel et poivre||Persil ou coriandre fraiche';

  @override
  String get dishShakshukaSteps =>
      'Chauffez l\'huile d\'olive dans une grande poele a feu moyen. Faites revenir l\'oignon 5 minutes.||Ajoutez l\'ail et les poivrons. Cuisez 5 minutes de plus.||Ajoutez le cumin, le paprika et les flocons de piment. Cuisez 1 minute.||Versez les tomates concassees. Salez et poivrez. Laissez mijoter 10 minutes.||Formez de petits puits dans la sauce et cassez un oeuf dans chacun.||Couvrez et laissez cuire a feu doux 5 a 7 minutes jusqu\'a ce que les blancs soient pris et les jaunes encore coulants.||Parsemez d\'herbes fraiches et servez avec du pain croustillant.';

  @override
  String get dishPadThaiCrevettesTitle => 'Pad Thai aux crevettes';

  @override
  String get dishPadThaiCrevettesDescription =>
      'Le pad thai est un plat thailandais de nouilles de riz sautees avec crevettes, tofu, oeufs et une sauce acidulee au tamarin.';

  @override
  String get dishPadThaiCrevettesIngredients =>
      '200 g de nouilles de riz plates||150 g de crevettes decortiquees||100 g de tofu ferme en des||2 oeufs||3 c. a soupe de pate de tamarin||2 c. a soupe de sauce de poisson||1 c. a soupe de sucre||2 oignons nouveaux emincees||50 g de pousses de haricot mungo||2 c. a soupe d\'huile vegetale||Cacahuetes concassees et citron vert pour servir';

  @override
  String get dishPadThaiCrevettesSteps =>
      'Faites tremper les nouilles de riz dans de l\'eau tiede 20 minutes, puis egouttez.||Melangez la pate de tamarin, la sauce de poisson et le sucre dans un bol. Reservez.||Chauffez l\'huile dans un wok a feu vif. Faites dorer le tofu puis poussez-le sur le cote.||Ajoutez les crevettes et cuisez jusqu\'a ce qu\'elles rosissent. Poussez-les sur le cote.||Cassez les oeufs dans le wok et brouillez-les legerement.||Ajoutez les nouilles et versez la sauce. Faites sauter l\'ensemble 3 minutes a feu vif.||Ajoutez les pousses de haricot et les oignons nouveaux. Faites sauter 1 minute de plus.||Servez avec des cacahuetes concassees et un quartier de citron vert.';
}
