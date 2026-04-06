import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dish.dart';

Database? db;

Future<Database> getDatabase() async {
  if (db != null) return db!;

  String path = join(await getDatabasesPath(), 'recipes.db');

  db = await openDatabase(
    path,
    version: 5,
    onUpgrade: (db, oldVersion, newVersion) async {
      await db.execute('DROP TABLE IF EXISTS dish');
      await _createAndPopulate(db);
    },
    onCreate: (db, version) async {
      await _createAndPopulate(db);
    },
  );

  return db!;
}

Future<void> _createAndPopulate(Database db) async {
  await db.execute('''
    CREATE TABLE dish (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      imageUrl TEXT,
      title TEXT,
      description TEXT,
      portions INTEGER,
      preparation INTEGER,
      cuisson INTEGER,
      ingredients TEXT,
      etapes TEXT
    )
  ''');

  await db.insert('dish', {
    'imageUrl': 'assets/images/dishes/tsuvian.jpg',
    'title': 'Tsuvian',
    'description': 'Tsuvian is a traditional mongolian dish. It\'s made using noodles and meat.',
    'portions': 2,
    'preparation': 30,
    'cuisson': 30,
    'ingredients': '200g of your noodle of choice||300g of beef cut in stripes||1 diced onion||2 carrots cut into julienne||1 diced red pepper||2 cloves of garlic||2 tbsp vegetable oil||Salt and pepper',
    'etapes': 'Heat oil in a large pan or wok over high heat. Sauté the onion and garlic for 2 minutes.||Add the beef strips and stir-fry until golden, about 5 minutes.||Add the carrots and bell pepper. Stir and cook for 5 more minutes.||Add the raw noodles directly to the pan with a glass of water. Stir, cover, and cook over medium heat for 15 to 20 minutes, stirring regularly.||Season with salt and pepper. Serve hot.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/dishes/ratatouille.jpg',
    'title': 'Ratatouille',
    'description': 'Ratatouille is a classic Provençal stewed vegetable dish from the south of France.',
    'portions': 4,
    'preparation': 20,
    'cuisson': 45,
    'ingredients': '1 eggplant||2 zucchinis||1 red bell pepper||1 yellow bell pepper||3 tomatoes||1 onion||2 garlic cloves||Olive oil||Herbes de Provence||Salt and pepper',
    'etapes': 'Dice all vegetables.||Sauté the onion and garlic in olive oil for 3 minutes.||Add the eggplant and cook for 5 minutes.||Add the zucchinis, bell peppers, and tomatoes.||Season with herbes de Provence, salt, and pepper.||Cover and simmer over low heat for 35 minutes.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/dishes/quiche.webp',
    'title': 'Quiche Lorraine',
    'description': 'Quiche Lorraine is a classic French savoury tart made with bacon and cream.',
    'portions': 6,
    'preparation': 15,
    'cuisson': 35,
    'ingredients': '1 shortcrust pastry||200g bacon lardons||3 eggs||200ml heavy cream||200ml milk||100g grated gruyère||Salt, pepper, and nutmeg',
    'etapes': 'Preheat the oven to 180°C.||Roll out the pastry into a tart tin.||Cook the lardons in a dry pan until lightly browned.||Mix the eggs, cream, and milk together. Season.||Spread the lardons over the pastry and pour the egg mixture on top.||Sprinkle with grated gruyère.||Bake for 35 minutes until golden.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/dishes/pelmeni.png',
    'title': 'Pelmeni',
    'description': 'Pelmeni are traditional Russian dumplings filled with seasoned minced meat, boiled and served with butter or sour cream.',
    'portions': 4,
    'preparation': 60,
    'cuisson': 10,
    'ingredients': '300g plain flour||1 egg||150ml warm water||1 tsp salt (for dough)||250g ground beef||250g ground pork||1 onion, finely grated||Salt and pepper||Butter and sour cream to serve',
    'etapes': 'Mix flour, egg, water, and salt into a smooth dough. Cover and rest for 30 minutes.||Combine the ground beef, pork, grated onion, salt, and pepper to make the filling.||Roll the dough thinly and cut out circles about 7cm in diameter.||Place a small teaspoon of filling in the centre of each circle.||Fold the dough over and pinch the edges firmly, then join the two ends to form a crescent shape.||Bring a large pot of salted water to a boil. Cook the pelmeni in batches for 8 to 10 minutes until they float and are cooked through.||Serve hot with a knob of butter and a dollop of sour cream.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/dishes/shakshuka.png',
    'title': 'Shakshuka',
    'description': 'Shakshuka is a North African and Middle Eastern dish of eggs poached in a spiced tomato and pepper sauce.',
    'portions': 3,
    'preparation': 10,
    'cuisson': 25,
    'ingredients': '6 eggs||400g canned crushed tomatoes||2 red bell peppers, diced||1 onion, diced||3 garlic cloves, minced||1 tsp cumin||1 tsp paprika||1/2 tsp chili flakes||2 tbsp olive oil||Salt and pepper||Fresh parsley or coriander',
    'etapes': 'Heat olive oil in a wide pan over medium heat. Sauté the onion for 5 minutes.||Add the garlic and bell peppers. Cook for another 5 minutes.||Stir in the cumin, paprika, and chili flakes. Cook for 1 minute.||Pour in the crushed tomatoes. Season with salt and pepper. Simmer for 10 minutes.||Make small wells in the sauce and crack an egg into each one.||Cover and cook over low heat for 5 to 7 minutes until the egg whites are set but yolks are still runny.||Garnish with fresh herbs and serve with crusty bread.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/dishes/padthai.png',
    'title': 'Pad Thai crevettes',
    'description': 'Pad Thai is a stir-fried rice noodle dish from Thailand, packed with shrimp, tofu, eggs, and a tangy tamarind sauce.',
    'portions': 2,
    'preparation': 20,
    'cuisson': 15,
    'ingredients': '200g flat rice noodles||150g shrimp, peeled||100g firm tofu, cubed||2 eggs||3 tbsp tamarind paste||2 tbsp fish sauce||1 tbsp sugar||2 spring onions, chopped||50g bean sprouts||2 tbsp vegetable oil||Crushed peanuts and lime to serve',
    'etapes': 'Soak the rice noodles in warm water for 20 minutes, then drain.||Mix the tamarind paste, fish sauce, and sugar in a small bowl. Set aside.||Heat oil in a wok over high heat. Fry the tofu until golden, then push to the side.||Add the shrimp and cook until pink. Push to the side.||Crack the eggs into the wok and scramble lightly.||Add the noodles and pour in the sauce. Toss everything together over high heat for 3 minutes.||Add the bean sprouts and spring onions. Toss for 1 more minute.||Serve topped with crushed peanuts and a wedge of lime.',
  });
}

Future<int> insertDish(Dish dish) async {
  Database database = await getDatabase();
  return database.insert('dish', {
    'imageUrl': dish.imageUrl,
    'title': dish.title,
    'description': dish.description,
    'portions': dish.portions,
    'preparation': dish.preparation,
    'cuisson': dish.cuisson,
    'ingredients': dish.ingredients.join('||'),
    'etapes': dish.etapes.join('||'),
  });
}

Future<List<Dish>> getAllDishes() async {
  Database database = await getDatabase();
  List<Map<String, dynamic>> rows = await database.query('dish');

  List<Dish> dishes = [];
  for (var row in rows) {
    dishes.add(Dish(
      imageUrl: row['imageUrl'],
      title: row['title'],
      description: row['description'],
      portions: row['portions'],
      preparation: row['preparation'],
      cuisson: row['cuisson'],
      ingredients: row['ingredients'].split('||'),
      etapes: row['etapes'].split('||'),
    ));
  }
  return dishes;
}
