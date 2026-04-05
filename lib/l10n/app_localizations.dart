import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
    Locale('pt'),
  ];

  /// No description provided for @test.
  ///
  /// In en, this message translates to:
  /// **'I am the english file'**
  String get test;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get navAbout;

  /// No description provided for @navRecipes.
  ///
  /// In en, this message translates to:
  /// **'Recipes'**
  String get navRecipes;

  /// No description provided for @homeHeroTitle.
  ///
  /// In en, this message translates to:
  /// **'Healthy meals, zero fuss'**
  String get homeHeroTitle;

  /// No description provided for @homeHeroDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover our quick, whole-food recipes that you can cook tonight-no processed junk, no guesswork.'**
  String get homeHeroDescription;

  /// No description provided for @homeStartExploring.
  ///
  /// In en, this message translates to:
  /// **'Start Exploring'**
  String get homeStartExploring;

  /// No description provided for @homeBenefitsTitle.
  ///
  /// In en, this message translates to:
  /// **'What you\'ll get'**
  String get homeBenefitsTitle;

  /// No description provided for @homeFeatureWholeFoodTitle.
  ///
  /// In en, this message translates to:
  /// **'Whole-food recipes'**
  String get homeFeatureWholeFoodTitle;

  /// No description provided for @homeFeatureWholeFoodDescription.
  ///
  /// In en, this message translates to:
  /// **'Each dish uses everyday, unprocessed ingredients.'**
  String get homeFeatureWholeFoodDescription;

  /// No description provided for @homeFeatureMinimumFussTitle.
  ///
  /// In en, this message translates to:
  /// **'Minimum fuss'**
  String get homeFeatureMinimumFussTitle;

  /// No description provided for @homeFeatureMinimumFussDescription.
  ///
  /// In en, this message translates to:
  /// **'All recipes are designed to make eating healthy quick and easy.'**
  String get homeFeatureMinimumFussDescription;

  /// No description provided for @homeFeatureSearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Search in seconds'**
  String get homeFeatureSearchTitle;

  /// No description provided for @homeFeatureSearchDescription.
  ///
  /// In en, this message translates to:
  /// **'Filter by name or preparation time and jump straight to the recipe you need.'**
  String get homeFeatureSearchDescription;

  /// No description provided for @homeBuiltForLifeTitle.
  ///
  /// In en, this message translates to:
  /// **'Built for real life'**
  String get homeBuiltForLifeTitle;

  /// No description provided for @homeBuiltForLifeParagraph1.
  ///
  /// In en, this message translates to:
  /// **'Cooking shouldn\'t be complicated. These recipes are simple to make, fit busy schedules, and taste good enough to repeat.'**
  String get homeBuiltForLifeParagraph1;

  /// No description provided for @homeBuiltForLifeParagraph2.
  ///
  /// In en, this message translates to:
  /// **'Whether you\'re new to the kitchen or just need fresh ideas, we\'ve got you covered.'**
  String get homeBuiltForLifeParagraph2;

  /// No description provided for @homeFeatureIconSemanticsLabel.
  ///
  /// In en, this message translates to:
  /// **'Dart Logo'**
  String get homeFeatureIconSemanticsLabel;

  /// No description provided for @recipesPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Explore our recipes'**
  String get recipesPageTitle;

  /// No description provided for @recipesPageDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover our quick and delicious dishes Use the search bar to find a recipe by name, preparation or cook time, or simply scroll dow the list.'**
  String get recipesPageDescription;

  /// No description provided for @recipesFilterAny.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get recipesFilterAny;

  /// No description provided for @recipesFilter15Mins.
  ///
  /// In en, this message translates to:
  /// **'15 mins'**
  String get recipesFilter15Mins;

  /// No description provided for @recipesFilter30Mins.
  ///
  /// In en, this message translates to:
  /// **'30 mins'**
  String get recipesFilter30Mins;

  /// No description provided for @recipesFilter45Mins.
  ///
  /// In en, this message translates to:
  /// **'45 mins'**
  String get recipesFilter45Mins;

  /// No description provided for @recipesFilter60Mins.
  ///
  /// In en, this message translates to:
  /// **'60 mins'**
  String get recipesFilter60Mins;

  /// No description provided for @recipesFilterMaxPreparation.
  ///
  /// In en, this message translates to:
  /// **'Max preparation time'**
  String get recipesFilterMaxPreparation;

  /// No description provided for @recipesFilterMaxCooking.
  ///
  /// In en, this message translates to:
  /// **'Max cooking time'**
  String get recipesFilterMaxCooking;

  /// No description provided for @recipesSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by name...'**
  String get recipesSearchHint;

  /// No description provided for @recipeCardPortions.
  ///
  /// In en, this message translates to:
  /// **'Portions: {count}'**
  String recipeCardPortions(Object count);

  /// No description provided for @recipeCardPreparation.
  ///
  /// In en, this message translates to:
  /// **'Preparation: {minutes} mins'**
  String recipeCardPreparation(Object minutes);

  /// No description provided for @recipeCardCooking.
  ///
  /// In en, this message translates to:
  /// **'Cooking: {minutes} mins'**
  String recipeCardCooking(Object minutes);

  /// No description provided for @recipeCardViewRecipe.
  ///
  /// In en, this message translates to:
  /// **'View recipe'**
  String get recipeCardViewRecipe;

  /// No description provided for @recipeDetailIngredients.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get recipeDetailIngredients;

  /// No description provided for @recipeDetailPreparation.
  ///
  /// In en, this message translates to:
  /// **'Preparation'**
  String get recipeDetailPreparation;

  /// No description provided for @recipeDetailPortions.
  ///
  /// In en, this message translates to:
  /// **'Portions: {count}'**
  String recipeDetailPortions(Object count);

  /// No description provided for @recipeDetailPreparationTime.
  ///
  /// In en, this message translates to:
  /// **'Preparation: {minutes} mins'**
  String recipeDetailPreparationTime(Object minutes);

  /// No description provided for @recipeDetailCuissonTime.
  ///
  /// In en, this message translates to:
  /// **'Cuisson: {minutes} mins'**
  String recipeDetailCuissonTime(Object minutes);

  /// No description provided for @aboutHeadline.
  ///
  /// In en, this message translates to:
  /// **'Help more people cook nourishing meals, more often.'**
  String get aboutHeadline;

  /// No description provided for @aboutIntro.
  ///
  /// In en, this message translates to:
  /// **'Healthy Recipe Finder was created to prove that healthy eating can be convenient, affordable, and genuinely delicious.'**
  String get aboutIntro;

  /// No description provided for @aboutIntroExtended.
  ///
  /// In en, this message translates to:
  /// **'We showcase quick, whole-food dishes that anyone can master-no fancy equipment, no ultra-processed shortcuts-just honest ingredients and straightforward steps.'**
  String get aboutIntroExtended;

  /// No description provided for @aboutWhyWeExistTitle.
  ///
  /// In en, this message translates to:
  /// **'Why we exist'**
  String get aboutWhyWeExistTitle;

  /// No description provided for @aboutWhyWeExistReason1Title.
  ///
  /// In en, this message translates to:
  /// **'Cut through the noise.'**
  String get aboutWhyWeExistReason1Title;

  /// No description provided for @aboutWhyWeExistReason1Description.
  ///
  /// In en, this message translates to:
  /// **'The internet is bursting with recipes, yet most busy cooks still default to take-away or packaged foods. We curate a tight collection of fool-proof dishes so you can skip the scrolling and start cooking.'**
  String get aboutWhyWeExistReason1Description;

  /// No description provided for @aboutWhyWeExistReason2Title.
  ///
  /// In en, this message translates to:
  /// **'Empower home kitchens.'**
  String get aboutWhyWeExistReason2Title;

  /// No description provided for @aboutWhyWeExistReason2Description.
  ///
  /// In en, this message translates to:
  /// **'When you control what goes into your meals, you control how you feel. Every recipe is built around unrefined ingredients and ready in about half an hour of active prep.'**
  String get aboutWhyWeExistReason2Description;

  /// No description provided for @aboutWhyWeExistReason3Title.
  ///
  /// In en, this message translates to:
  /// **'Make healthy look good.'**
  String get aboutWhyWeExistReason3Title;

  /// No description provided for @aboutWhyWeExistReason3Description.
  ///
  /// In en, this message translates to:
  /// **'High-resolution imagery shows you exactly what success looks like-because we eat with our eyes first, and confidence matters.'**
  String get aboutWhyWeExistReason3Description;

  /// No description provided for @aboutFoodPhilosophyTitle.
  ///
  /// In en, this message translates to:
  /// **'Our food philosophy'**
  String get aboutFoodPhilosophyTitle;

  /// No description provided for @aboutFoodPhilosophyReason1Title.
  ///
  /// In en, this message translates to:
  /// **'Whole ingredients first.'**
  String get aboutFoodPhilosophyReason1Title;

  /// No description provided for @aboutFoodPhilosophyReason1Description.
  ///
  /// In en, this message translates to:
  /// **'Fresh produce, grains, legumes, herbs, and quality fats form the backbone of every recipe.'**
  String get aboutFoodPhilosophyReason1Description;

  /// No description provided for @aboutFoodPhilosophyReason2Title.
  ///
  /// In en, this message translates to:
  /// **'Flavor without compromise.'**
  String get aboutFoodPhilosophyReason2Title;

  /// No description provided for @aboutFoodPhilosophyReason2Description.
  ///
  /// In en, this message translates to:
  /// **'Spices, citrus, and natural sweetness replace excess salt, sugar, and additives.'**
  String get aboutFoodPhilosophyReason2Description;

  /// No description provided for @aboutFoodPhilosophyReason3Title.
  ///
  /// In en, this message translates to:
  /// **'Respect for time.'**
  String get aboutFoodPhilosophyReason3Title;

  /// No description provided for @aboutFoodPhilosophyReason3Description.
  ///
  /// In en, this message translates to:
  /// **'Weeknight meals should slot into real schedules; weekend cooking can be leisurely but never wasteful.'**
  String get aboutFoodPhilosophyReason3Description;

  /// No description provided for @aboutFoodPhilosophyReason4Title.
  ///
  /// In en, this message translates to:
  /// **'Sustainable choices.'**
  String get aboutFoodPhilosophyReason4Title;

  /// No description provided for @aboutFoodPhilosophyReason4Description.
  ///
  /// In en, this message translates to:
  /// **'Short ingredient lists cut down on food waste and carbon footprint, while plant-forward dishes keep things planet-friendly.'**
  String get aboutFoodPhilosophyReason4Description;

  /// No description provided for @aboutBeyondPlateTitle.
  ///
  /// In en, this message translates to:
  /// **'Beyond the plate'**
  String get aboutBeyondPlateTitle;

  /// No description provided for @aboutBeyondPlateIntro.
  ///
  /// In en, this message translates to:
  /// **'We believe food is a catalyst for community and well-being. By sharing approachable recipes, we hope to:'**
  String get aboutBeyondPlateIntro;

  /// No description provided for @aboutBeyondPlatePoint1.
  ///
  /// In en, this message translates to:
  /// **'Encourage family dinners and social cooking.'**
  String get aboutBeyondPlatePoint1;

  /// No description provided for @aboutBeyondPlatePoint2.
  ///
  /// In en, this message translates to:
  /// **'Reduce reliance on single-use packaging and delivery waste.'**
  String get aboutBeyondPlatePoint2;

  /// No description provided for @aboutBeyondPlatePoint3.
  ///
  /// In en, this message translates to:
  /// **'Spark curiosity about seasonal produce and local agriculture.'**
  String get aboutBeyondPlatePoint3;

  /// No description provided for @ctaTitle.
  ///
  /// In en, this message translates to:
  /// **'Ready to cook smarter ?'**
  String get ctaTitle;

  /// No description provided for @ctaDescription.
  ///
  /// In en, this message translates to:
  /// **'Hit the button, pick a recipe, and get dinner on the table-fast.'**
  String get ctaDescription;

  /// No description provided for @ctaBrowseRecipes.
  ///
  /// In en, this message translates to:
  /// **'Browse recipes'**
  String get ctaBrowseRecipes;

  /// No description provided for @dishTsuvianTitle.
  ///
  /// In en, this message translates to:
  /// **'Tsuvian'**
  String get dishTsuvianTitle;

  /// No description provided for @dishTsuvianDescription.
  ///
  /// In en, this message translates to:
  /// **'Tsuvian is a traditional mongolian dish. It\'s made using noodles and meat.'**
  String get dishTsuvianDescription;

  /// No description provided for @dishTsuvianIngredients.
  ///
  /// In en, this message translates to:
  /// **'200g of your noodle of choice||300g of beef cut in stripes||1 diced onion||2 carrots cut into julienne||1 diced red pepper||2 cloves of garlic||2 tbsp vegetable oil||Salt and pepper'**
  String get dishTsuvianIngredients;

  /// No description provided for @dishTsuvianSteps.
  ///
  /// In en, this message translates to:
  /// **'Heat oil in a large pan or wok over high heat. Sauté the onion and garlic for 2 minutes.||Add the beef strips and stir-fry until golden, about 5 minutes.||Add the carrots and bell pepper. Stir and cook for 5 more minutes.||Add the raw noodles directly to the pan with a glass of water. Stir, cover, and cook over medium heat for 15 to 20 minutes, stirring regularly.||Season with salt and pepper. Serve hot.'**
  String get dishTsuvianSteps;

  /// No description provided for @dishRatatouilleTitle.
  ///
  /// In en, this message translates to:
  /// **'Ratatouille'**
  String get dishRatatouilleTitle;

  /// No description provided for @dishRatatouilleDescription.
  ///
  /// In en, this message translates to:
  /// **'Ratatouille is a classic Provençal stewed vegetable dish from the south of France.'**
  String get dishRatatouilleDescription;

  /// No description provided for @dishRatatouilleIngredients.
  ///
  /// In en, this message translates to:
  /// **'1 eggplant||2 zucchinis||1 red bell pepper||1 yellow bell pepper||3 tomatoes||1 onion||2 garlic cloves||Olive oil||Herbes de Provence||Salt and pepper'**
  String get dishRatatouilleIngredients;

  /// No description provided for @dishRatatouilleSteps.
  ///
  /// In en, this message translates to:
  /// **'Dice all vegetables.||Sauté the onion and garlic in olive oil for 3 minutes.||Add the eggplant and cook for 5 minutes.||Add the zucchinis, bell peppers, and tomatoes.||Season with herbes de Provence, salt, and pepper.||Cover and simmer over low heat for 35 minutes.'**
  String get dishRatatouilleSteps;

  /// No description provided for @dishQuicheLorraineTitle.
  ///
  /// In en, this message translates to:
  /// **'Quiche Lorraine'**
  String get dishQuicheLorraineTitle;

  /// No description provided for @dishQuicheLorraineDescription.
  ///
  /// In en, this message translates to:
  /// **'Quiche Lorraine is a classic French savoury tart made with bacon and cream.'**
  String get dishQuicheLorraineDescription;

  /// No description provided for @dishQuicheLorraineIngredients.
  ///
  /// In en, this message translates to:
  /// **'1 shortcrust pastry||200g bacon lardons||3 eggs||200ml heavy cream||200ml milk||100g grated gruyère||Salt, pepper, and nutmeg'**
  String get dishQuicheLorraineIngredients;

  /// No description provided for @dishQuicheLorraineSteps.
  ///
  /// In en, this message translates to:
  /// **'Preheat the oven to 180°C.||Roll out the pastry into a tart tin.||Cook the lardons in a dry pan until lightly browned.||Mix the eggs, cream, and milk together. Season.||Spread the lardons over the pastry and pour the egg mixture on top.||Sprinkle with grated gruyère.||Bake for 35 minutes until golden.'**
  String get dishQuicheLorraineSteps;

  /// No description provided for @dishPelmeniTitle.
  ///
  /// In en, this message translates to:
  /// **'Pelmeni'**
  String get dishPelmeniTitle;

  /// No description provided for @dishPelmeniDescription.
  ///
  /// In en, this message translates to:
  /// **'Pelmeni are traditional Russian dumplings filled with seasoned minced meat, boiled and served with butter or sour cream.'**
  String get dishPelmeniDescription;

  /// No description provided for @dishPelmeniIngredients.
  ///
  /// In en, this message translates to:
  /// **'300g plain flour||1 egg||150ml warm water||1 tsp salt (for dough)||250g ground beef||250g ground pork||1 onion, finely grated||Salt and pepper||Butter and sour cream to serve'**
  String get dishPelmeniIngredients;

  /// No description provided for @dishPelmeniSteps.
  ///
  /// In en, this message translates to:
  /// **'Mix flour, egg, water, and salt into a smooth dough. Cover and rest for 30 minutes.||Combine the ground beef, pork, grated onion, salt, and pepper to make the filling.||Roll the dough thinly and cut out circles about 7cm in diameter.||Place a small teaspoon of filling in the centre of each circle.||Fold the dough over and pinch the edges firmly, then join the two ends to form a crescent shape.||Bring a large pot of salted water to a boil. Cook the pelmeni in batches for 8 to 10 minutes until they float and are cooked through.||Serve hot with a knob of butter and a dollop of sour cream.'**
  String get dishPelmeniSteps;

  /// No description provided for @dishShakshukaTitle.
  ///
  /// In en, this message translates to:
  /// **'Shakshuka'**
  String get dishShakshukaTitle;

  /// No description provided for @dishShakshukaDescription.
  ///
  /// In en, this message translates to:
  /// **'Shakshuka is a North African and Middle Eastern dish of eggs poached in a spiced tomato and pepper sauce.'**
  String get dishShakshukaDescription;

  /// No description provided for @dishShakshukaIngredients.
  ///
  /// In en, this message translates to:
  /// **'6 eggs||400g canned crushed tomatoes||2 red bell peppers, diced||1 onion, diced||3 garlic cloves, minced||1 tsp cumin||1 tsp paprika||1/2 tsp chili flakes||2 tbsp olive oil||Salt and pepper||Fresh parsley or coriander'**
  String get dishShakshukaIngredients;

  /// No description provided for @dishShakshukaSteps.
  ///
  /// In en, this message translates to:
  /// **'Heat olive oil in a wide pan over medium heat. Sauté the onion for 5 minutes.||Add the garlic and bell peppers. Cook for another 5 minutes.||Stir in the cumin, paprika, and chili flakes. Cook for 1 minute.||Pour in the crushed tomatoes. Season with salt and pepper. Simmer for 10 minutes.||Make small wells in the sauce and crack an egg into each one.||Cover and cook over low heat for 5 to 7 minutes until the egg whites are set but yolks are still runny.||Garnish with fresh herbs and serve with crusty bread.'**
  String get dishShakshukaSteps;

  /// No description provided for @dishPadThaiCrevettesTitle.
  ///
  /// In en, this message translates to:
  /// **'Pad Thai crevettes'**
  String get dishPadThaiCrevettesTitle;

  /// No description provided for @dishPadThaiCrevettesDescription.
  ///
  /// In en, this message translates to:
  /// **'Pad Thai is a stir-fried rice noodle dish from Thailand, packed with shrimp, tofu, eggs, and a tangy tamarind sauce.'**
  String get dishPadThaiCrevettesDescription;

  /// No description provided for @dishPadThaiCrevettesIngredients.
  ///
  /// In en, this message translates to:
  /// **'200g flat rice noodles||150g shrimp, peeled||100g firm tofu, cubed||2 eggs||3 tbsp tamarind paste||2 tbsp fish sauce||1 tbsp sugar||2 spring onions, chopped||50g bean sprouts||2 tbsp vegetable oil||Crushed peanuts and lime to serve'**
  String get dishPadThaiCrevettesIngredients;

  /// No description provided for @dishPadThaiCrevettesSteps.
  ///
  /// In en, this message translates to:
  /// **'Soak the rice noodles in warm water for 20 minutes, then drain.||Mix the tamarind paste, fish sauce, and sugar in a small bowl. Set aside.||Heat oil in a wok over high heat. Fry the tofu until golden, then push to the side.||Add the shrimp and cook until pink. Push to the side.||Crack the eggs into the wok and scramble lightly.||Add the noodles and pour in the sauce. Toss everything together over high heat for 3 minutes.||Add the bean sprouts and spring onions. Toss for 1 more minute.||Serve topped with crushed peanuts and a wedge of lime.'**
  String get dishPadThaiCrevettesSteps;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
