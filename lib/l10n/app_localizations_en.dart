// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get test => 'I am the english file';

  @override
  String get navHome => 'Home';

  @override
  String get navAbout => 'About';

  @override
  String get navRecipes => 'Recipes';

  @override
  String get homeHeroTitle => 'Healthy meals, zero fuss';

  @override
  String get homeHeroDescription =>
      'Discover our quick, whole-food recipes that you can cook tonight-no processed junk, no guesswork.';

  @override
  String get homeStartExploring => 'Start Exploring';

  @override
  String get homeBenefitsTitle => 'What you\'ll get';

  @override
  String get homeFeatureWholeFoodTitle => 'Whole-food recipes';

  @override
  String get homeFeatureWholeFoodDescription =>
      'Each dish uses everyday, unprocessed ingredients.';

  @override
  String get homeFeatureMinimumFussTitle => 'Minimum fuss';

  @override
  String get homeFeatureMinimumFussDescription =>
      'All recipes are designed to make eating healthy quick and easy.';

  @override
  String get homeFeatureSearchTitle => 'Search in seconds';

  @override
  String get homeFeatureSearchDescription =>
      'Filter by name or preparation time and jump straight to the recipe you need.';

  @override
  String get homeBuiltForLifeTitle => 'Built for real life';

  @override
  String get homeBuiltForLifeParagraph1 =>
      'Cooking shouldn\'t be complicated. These recipes are simple to make, fit busy schedules, and taste good enough to repeat.';

  @override
  String get homeBuiltForLifeParagraph2 =>
      'Whether you\'re new to the kitchen or just need fresh ideas, we\'ve got you covered.';

  @override
  String get homeFeatureIconSemanticsLabel => 'Dart Logo';

  @override
  String get recipesPageTitle => 'Explore our recipes';

  @override
  String get recipesPageDescription =>
      'Discover our quick and delicious dishes Use the search bar to find a recipe by name, preparation or cook time, or simply scroll dow the list.';

  @override
  String get recipesFilterAny => 'Any';

  @override
  String get recipesFilter15Mins => '15 mins';

  @override
  String get recipesFilter30Mins => '30 mins';

  @override
  String get recipesFilter45Mins => '45 mins';

  @override
  String get recipesFilter60Mins => '60 mins';

  @override
  String get recipesFilterMaxPreparation => 'Max preparation time';

  @override
  String get recipesFilterMaxCooking => 'Max cooking time';

  @override
  String get recipesSearchHint => 'Search by name...';

  @override
  String recipeCardPortions(Object count) {
    return 'Portions: $count';
  }

  @override
  String recipeCardPreparation(Object minutes) {
    return 'Preparation: $minutes mins';
  }

  @override
  String recipeCardCooking(Object minutes) {
    return 'Cooking: $minutes mins';
  }

  @override
  String get recipeCardViewRecipe => 'View recipe';

  @override
  String get recipeDetailIngredients => 'Ingredients';

  @override
  String get recipeDetailPreparation => 'Preparation';

  @override
  String recipeDetailPortions(Object count) {
    return 'Portions: $count';
  }

  @override
  String recipeDetailPreparationTime(Object minutes) {
    return 'Preparation: $minutes mins';
  }

  @override
  String recipeDetailCuissonTime(Object minutes) {
    return 'Cuisson: $minutes mins';
  }

  @override
  String get aboutHeadline =>
      'Help more people cook nourishing meals, more often.';

  @override
  String get aboutIntro =>
      'Healthy Recipe Finder was created to prove that healthy eating can be convenient, affordable, and genuinely delicious.';

  @override
  String get aboutIntroExtended =>
      'We showcase quick, whole-food dishes that anyone can master-no fancy equipment, no ultra-processed shortcuts-just honest ingredients and straightforward steps.';

  @override
  String get aboutWhyWeExistTitle => 'Why we exist';

  @override
  String get aboutWhyWeExistReason1Title => 'Cut through the noise.';

  @override
  String get aboutWhyWeExistReason1Description =>
      'The internet is bursting with recipes, yet most busy cooks still default to take-away or packaged foods. We curate a tight collection of fool-proof dishes so you can skip the scrolling and start cooking.';

  @override
  String get aboutWhyWeExistReason2Title => 'Empower home kitchens.';

  @override
  String get aboutWhyWeExistReason2Description =>
      'When you control what goes into your meals, you control how you feel. Every recipe is built around unrefined ingredients and ready in about half an hour of active prep.';

  @override
  String get aboutWhyWeExistReason3Title => 'Make healthy look good.';

  @override
  String get aboutWhyWeExistReason3Description =>
      'High-resolution imagery shows you exactly what success looks like-because we eat with our eyes first, and confidence matters.';

  @override
  String get aboutFoodPhilosophyTitle => 'Our food philosophy';

  @override
  String get aboutFoodPhilosophyReason1Title => 'Whole ingredients first.';

  @override
  String get aboutFoodPhilosophyReason1Description =>
      'Fresh produce, grains, legumes, herbs, and quality fats form the backbone of every recipe.';

  @override
  String get aboutFoodPhilosophyReason2Title => 'Flavor without compromise.';

  @override
  String get aboutFoodPhilosophyReason2Description =>
      'Spices, citrus, and natural sweetness replace excess salt, sugar, and additives.';

  @override
  String get aboutFoodPhilosophyReason3Title => 'Respect for time.';

  @override
  String get aboutFoodPhilosophyReason3Description =>
      'Weeknight meals should slot into real schedules; weekend cooking can be leisurely but never wasteful.';

  @override
  String get aboutFoodPhilosophyReason4Title => 'Sustainable choices.';

  @override
  String get aboutFoodPhilosophyReason4Description =>
      'Short ingredient lists cut down on food waste and carbon footprint, while plant-forward dishes keep things planet-friendly.';

  @override
  String get aboutBeyondPlateTitle => 'Beyond the plate';

  @override
  String get aboutBeyondPlateIntro =>
      'We believe food is a catalyst for community and well-being. By sharing approachable recipes, we hope to:';

  @override
  String get aboutBeyondPlatePoint1 =>
      'Encourage family dinners and social cooking.';

  @override
  String get aboutBeyondPlatePoint2 =>
      'Reduce reliance on single-use packaging and delivery waste.';

  @override
  String get aboutBeyondPlatePoint3 =>
      'Spark curiosity about seasonal produce and local agriculture.';

  @override
  String get ctaTitle => 'Ready to cook smarter ?';

  @override
  String get ctaDescription =>
      'Hit the button, pick a recipe, and get dinner on the table-fast.';

  @override
  String get ctaBrowseRecipes => 'Browse recipes';

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

  @override
  String get footerMadeWith => 'Made with ❤️';
}
