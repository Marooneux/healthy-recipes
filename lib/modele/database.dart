import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dish.dart';

Database? db;

Future<Database> getDatabase() async {
  if (db != null) return db!;

  String path = join(await getDatabasesPath(), 'recipes.db');

  db = await openDatabase(
    path,
    version: 3,
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
    'imageUrl': 'assets/images/tsuvian.jpg',
    'title': 'Tsuvian',
    'description': 'Tsuvian is a traditional mongolian dish. It\'s made using noodles and meat.',
    'portions': 2,
    'preparation': 30,
    'cuisson': 30,
    'ingredients': '200g of your noodle of choice||300g of beef cut in stripes||1 diced onion||2 carrots cut into julienne||1 diced red pepper||2 cloves of garlic||2 tbsp vegetable oil||Salt and pepper',
    'etapes': 'Heat oil in a large pan or wok over high heat. Sauté the onion and garlic for 2 minutes.||Add the beef strips and stir-fry until golden, about 5 minutes.||Add the carrots and bell pepper. Stir and cook for 5 more minutes.||Add the raw noodles directly to the pan with a glass of water. Stir, cover, and cook over medium heat for 15 to 20 minutes, stirring regularly.||Season with salt and pepper. Serve hot.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/ratatouille.jpg',
    'title': 'Ratatouille',
    'description': 'Ratatouille is a classic Provençal stewed vegetable dish from the south of France.',
    'portions': 4,
    'preparation': 20,
    'cuisson': 45,
    'ingredients': '1 eggplant||2 zucchinis||1 red bell pepper||1 yellow bell pepper||3 tomatoes||1 onion||2 garlic cloves||Olive oil||Herbes de Provence||Salt and pepper',
    'etapes': 'Dice all vegetables.||Sauté the onion and garlic in olive oil for 3 minutes.||Add the eggplant and cook for 5 minutes.||Add the zucchinis, bell peppers, and tomatoes.||Season with herbes de Provence, salt, and pepper.||Cover and simmer over low heat for 35 minutes.',
  });

  await db.insert('dish', {
    'imageUrl': 'assets/images/quiche.webp',
    'title': 'Quiche Lorraine',
    'description': 'Quiche Lorraine is a classic French savoury tart made with bacon and cream.',
    'portions': 6,
    'preparation': 15,
    'cuisson': 35,
    'ingredients': '1 shortcrust pastry||200g bacon lardons||3 eggs||200ml heavy cream||200ml milk||100g grated gruyère||Salt, pepper, and nutmeg',
    'etapes': 'Preheat the oven to 180°C.||Roll out the pastry into a tart tin.||Cook the lardons in a dry pan until lightly browned.||Mix the eggs, cream, and milk together. Season.||Spread the lardons over the pastry and pour the egg mixture on top.||Sprinkle with grated gruyère.||Bake for 35 minutes until golden.',
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
