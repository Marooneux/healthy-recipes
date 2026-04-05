// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get test => 'Sou o ficheiro em português';

  @override
  String get navHome => 'Início';

  @override
  String get navAbout => 'Sobre';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get homeHeroTitle => 'Refeições saudáveis, sem complicação';

  @override
  String get homeHeroDescription =>
      'Descobre as nossas receitas rápidas e naturais que podes cozinhar hoje, sem processados e sem stress.';

  @override
  String get homeStartExploring => 'Explorar';

  @override
  String get homeBenefitsTitle => 'O que vais encontrar';

  @override
  String get homeFeatureWholeFoodTitle => 'Receitas naturais';

  @override
  String get homeFeatureWholeFoodDescription =>
      'Cada prato usa ingredientes do dia a dia e pouco processados.';

  @override
  String get homeFeatureMinimumFussTitle => 'Mínimo esforço';

  @override
  String get homeFeatureMinimumFussDescription =>
      'Todas as receitas foram pensadas para comer bem de forma rápida e simples.';

  @override
  String get homeFeatureSearchTitle => 'Pesquisa em segundos';

  @override
  String get homeFeatureSearchDescription =>
      'Filtra por nome ou tempo de preparação e encontra logo a receita certa.';

  @override
  String get homeBuiltForLifeTitle => 'Feito para a vida real';

  @override
  String get homeBuiltForLifeParagraph1 =>
      'Cozinhar não deve ser complicado. Estas receitas são simples, adaptadas a agendas cheias e saborosas para repetir.';

  @override
  String get homeBuiltForLifeParagraph2 =>
      'Se estás a começar na cozinha ou procuras novas ideias, estamos aqui para ajudar.';

  @override
  String get homeFeatureIconSemanticsLabel => 'Logotipo Dart';

  @override
  String get recipesPageTitle => 'Explora as nossas receitas';

  @override
  String get recipesPageDescription =>
      'Descobre pratos rápidos e deliciosos. Usa a barra de pesquisa para encontrar receitas por nome, tempo de preparação ou de confeção.';

  @override
  String get recipesFilterAny => 'Qualquer';

  @override
  String get recipesFilter15Mins => '15 min';

  @override
  String get recipesFilter30Mins => '30 min';

  @override
  String get recipesFilter45Mins => '45 min';

  @override
  String get recipesFilter60Mins => '60 min';

  @override
  String get recipesFilterMaxPreparation => 'Tempo máximo de preparação';

  @override
  String get recipesFilterMaxCooking => 'Tempo máximo de confeção';

  @override
  String get recipesSearchHint => 'Pesquisar por nome...';

  @override
  String recipeCardPortions(Object count) {
    return 'Doses: $count';
  }

  @override
  String recipeCardPreparation(Object minutes) {
    return 'Preparação: $minutes min';
  }

  @override
  String recipeCardCooking(Object minutes) {
    return 'Cozedura: $minutes min';
  }

  @override
  String get recipeCardViewRecipe => 'Ver receita';

  @override
  String get recipeDetailIngredients => 'Ingredientes';

  @override
  String get recipeDetailPreparation => 'Preparação';

  @override
  String recipeDetailPortions(Object count) {
    return 'Doses: $count';
  }

  @override
  String recipeDetailPreparationTime(Object minutes) {
    return 'Preparação: $minutes min';
  }

  @override
  String recipeDetailCuissonTime(Object minutes) {
    return 'Cozedura: $minutes min';
  }

  @override
  String get aboutHeadline =>
      'Ajudar mais pessoas a cozinhar refeições nutritivas, mais vezes.';

  @override
  String get aboutIntro =>
      'Healthy Recipe Finder foi criado para provar que comer de forma saudável pode ser prático, acessível e delicioso.';

  @override
  String get aboutIntroExtended =>
      'Mostramos pratos rapidos e naturais que qualquer pessoa consegue preparar, sem equipamento especial e sem atalhos ultra-processados.';

  @override
  String get aboutWhyWeExistTitle => 'Por que existimos';

  @override
  String get aboutWhyWeExistReason1Title => 'Menos ruído, mais cozinha.';

  @override
  String get aboutWhyWeExistReason1Description =>
      'A internet está cheia de receitas, mas muita gente continua a optar por take-away. Selecionamos receitas fiáveis para poupares tempo e começares logo a cozinhar.';

  @override
  String get aboutWhyWeExistReason2Title => 'Dar poder à cozinha de casa.';

  @override
  String get aboutWhyWeExistReason2Description =>
      'Quando controlas o que entra nas refeições, controlas como te sentes. Cada receita usa ingredientes simples e preparação ativa curta.';

  @override
  String get aboutWhyWeExistReason3Title =>
      'Comer saudável também é apetitoso.';

  @override
  String get aboutWhyWeExistReason3Description =>
      'Imagens de qualidade mostram exatamente o resultado esperado, porque também comemos com os olhos.';

  @override
  String get aboutFoodPhilosophyTitle => 'A nossa filosofia alimentar';

  @override
  String get aboutFoodPhilosophyReason1Title =>
      'Ingredientes inteiros primeiro.';

  @override
  String get aboutFoodPhilosophyReason1Description =>
      'Produtos frescos, grãos, leguminosas, ervas e boas gorduras são a base de cada receita.';

  @override
  String get aboutFoodPhilosophyReason2Title => 'Sabor sem compromisso.';

  @override
  String get aboutFoodPhilosophyReason2Description =>
      'Especiarias, citrinos e doçura natural substituem excesso de sal, açúcar e aditivos.';

  @override
  String get aboutFoodPhilosophyReason3Title => 'Respeito pelo tempo.';

  @override
  String get aboutFoodPhilosophyReason3Description =>
      'As refeições da semana devem encaixar na vida real; ao fim de semana pode ser mais demorado, sem desperdício.';

  @override
  String get aboutFoodPhilosophyReason4Title => 'Escolhas sustentáveis.';

  @override
  String get aboutFoodPhilosophyReason4Description =>
      'Listas de ingredientes curtas reduzem desperdício e pegada ambiental, enquanto pratos com base vegetal ajudam o planeta.';

  @override
  String get aboutBeyondPlateTitle => 'Para além do prato';

  @override
  String get aboutBeyondPlateIntro =>
      'Acreditamos que a comida aproxima pessoas e melhora o bem-estar. Ao partilhar receitas acessíveis, queremos:';

  @override
  String get aboutBeyondPlatePoint1 =>
      'Incentivar jantares em família e cozinha partilhada.';

  @override
  String get aboutBeyondPlatePoint2 =>
      'Reduzir dependência de embalagens descartáveis e resíduos de entrega.';

  @override
  String get aboutBeyondPlatePoint3 =>
      'Despertar curiosidade por produtos sazonais e agricultura local.';

  @override
  String get ctaTitle => 'Pronto para cozinhar de forma mais inteligente?';

  @override
  String get ctaDescription =>
      'Clica no botão, escolhe uma receita e tem o jantar na mesa rapidamente.';

  @override
  String get ctaBrowseRecipes => 'Ver receitas';

  @override
  String get dishTsuvianTitle => 'Tsuvian';

  @override
  String get dishTsuvianDescription =>
      'Tsuvian is a traditional mongolian dish. It\'s made using noodles and meat.';

  @override
  String get dishTsuvianIngredients =>
      '200g of your noodle of choice||300g of beef cut in stripes||1 diced onion||2 carrots cut into julienne||1 diced red pepper||2 cloves of garlic||2 tbsp vegetable oil||Salt and pepper';

  @override
  String get dishTsuvianSteps =>
      'Heat oil in a large pan or wok over high heat. Sauté the onion and garlic for 2 minutes.||Add the beef strips and stir-fry until golden, about 5 minutes.||Add the carrots and bell pepper. Stir and cook for 5 more minutes.||Add the raw noodles directly to the pan with a glass of water. Stir, cover, and cook over medium heat for 15 to 20 minutes, stirring regularly.||Season with salt and pepper. Serve hot.';

  @override
  String get dishRatatouilleTitle => 'Ratatouille';

  @override
  String get dishRatatouilleDescription =>
      'Ratatouille is a classic Provençal stewed vegetable dish from the south of France.';

  @override
  String get dishRatatouilleIngredients =>
      '1 eggplant||2 zucchinis||1 red bell pepper||1 yellow bell pepper||3 tomatoes||1 onion||2 garlic cloves||Olive oil||Herbes de Provence||Salt and pepper';

  @override
  String get dishRatatouilleSteps =>
      'Dice all vegetables.||Sauté the onion and garlic in olive oil for 3 minutes.||Add the eggplant and cook for 5 minutes.||Add the zucchinis, bell peppers, and tomatoes.||Season with herbes de Provence, salt, and pepper.||Cover and simmer over low heat for 35 minutes.';

  @override
  String get dishQuicheLorraineTitle => 'Quiche Lorraine';

  @override
  String get dishQuicheLorraineDescription =>
      'Quiche Lorraine is a classic French savoury tart made with bacon and cream.';

  @override
  String get dishQuicheLorraineIngredients =>
      '1 shortcrust pastry||200g bacon lardons||3 eggs||200ml heavy cream||200ml milk||100g grated gruyère||Salt, pepper, and nutmeg';

  @override
  String get dishQuicheLorraineSteps =>
      'Preheat the oven to 180°C.||Roll out the pastry into a tart tin.||Cook the lardons in a dry pan until lightly browned.||Mix the eggs, cream, and milk together. Season.||Spread the lardons over the pastry and pour the egg mixture on top.||Sprinkle with grated gruyère.||Bake for 35 minutes until golden.';

  @override
  String get dishPelmeniTitle => 'Pelmeni';

  @override
  String get dishPelmeniDescription =>
      'Pelmeni are traditional Russian dumplings filled with seasoned minced meat, boiled and served with butter or sour cream.';

  @override
  String get dishPelmeniIngredients =>
      '300g plain flour||1 egg||150ml warm water||1 tsp salt (for dough)||250g ground beef||250g ground pork||1 onion, finely grated||Salt and pepper||Butter and sour cream to serve';

  @override
  String get dishPelmeniSteps =>
      'Mix flour, egg, water, and salt into a smooth dough. Cover and rest for 30 minutes.||Combine the ground beef, pork, grated onion, salt, and pepper to make the filling.||Roll the dough thinly and cut out circles about 7cm in diameter.||Place a small teaspoon of filling in the centre of each circle.||Fold the dough over and pinch the edges firmly, then join the two ends to form a crescent shape.||Bring a large pot of salted water to a boil. Cook the pelmeni in batches for 8 to 10 minutes until they float and are cooked through.||Serve hot with a knob of butter and a dollop of sour cream.';

  @override
  String get dishShakshukaTitle => 'Shakshuka';

  @override
  String get dishShakshukaDescription =>
      'Shakshuka is a North African and Middle Eastern dish of eggs poached in a spiced tomato and pepper sauce.';

  @override
  String get dishShakshukaIngredients =>
      '6 eggs||400g canned crushed tomatoes||2 red bell peppers, diced||1 onion, diced||3 garlic cloves, minced||1 tsp cumin||1 tsp paprika||1/2 tsp chili flakes||2 tbsp olive oil||Salt and pepper||Fresh parsley or coriander';

  @override
  String get dishShakshukaSteps =>
      'Heat olive oil in a wide pan over medium heat. Sauté the onion for 5 minutes.||Add the garlic and bell peppers. Cook for another 5 minutes.||Stir in the cumin, paprika, and chili flakes. Cook for 1 minute.||Pour in the crushed tomatoes. Season with salt and pepper. Simmer for 10 minutes.||Make small wells in the sauce and crack an egg into each one.||Cover and cook over low heat for 5 to 7 minutes until the egg whites are set but yolks are still runny.||Garnish with fresh herbs and serve with crusty bread.';

  @override
  String get dishPadThaiCrevettesTitle => 'Pad Thai crevettes';

  @override
  String get dishPadThaiCrevettesDescription =>
      'Pad Thai is a stir-fried rice noodle dish from Thailand, packed with shrimp, tofu, eggs, and a tangy tamarind sauce.';

  @override
  String get dishPadThaiCrevettesIngredients =>
      '200g flat rice noodles||150g shrimp, peeled||100g firm tofu, cubed||2 eggs||3 tbsp tamarind paste||2 tbsp fish sauce||1 tbsp sugar||2 spring onions, chopped||50g bean sprouts||2 tbsp vegetable oil||Crushed peanuts and lime to serve';

  @override
  String get dishPadThaiCrevettesSteps =>
      'Soak the rice noodles in warm water for 20 minutes, then drain.||Mix the tamarind paste, fish sauce, and sugar in a small bowl. Set aside.||Heat oil in a wok over high heat. Fry the tofu until golden, then push to the side.||Add the shrimp and cook until pink. Push to the side.||Crack the eggs into the wok and scramble lightly.||Add the noodles and pour in the sauce. Toss everything together over high heat for 3 minutes.||Add the bean sprouts and spring onions. Toss for 1 more minute.||Serve topped with crushed peanuts and a wedge of lime.';
}
