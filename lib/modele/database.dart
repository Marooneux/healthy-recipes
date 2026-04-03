import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dish.dart';

Database? db;

Future<Database> getDatabase() async {
  if (db != null) return db!;

  String path = join(await getDatabasesPath(), 'recipes.db');

  db = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
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
        'description': 'Le tsuivan est une spécialité culinaire originaire de Mongolie. Il s\'agit traditionnellement d\'un plat de pâtes avec de la viande.',
        'portions': 2,
        'preparation': 30,
        'cuisson': 30,
        'ingredients': '200 g de pâtes larges||300 g de bœuf en fines lamelles||1 oignon émincé||2 carottes en julienne||1 poivron rouge émincé||2 gousses d\'ail||2 c. à soupe d\'huile végétale||Sel et poivre',
        'etapes': 'Faire chauffer l\'huile dans une grande poêle ou un wok à feu vif. Faire revenir l\'oignon et l\'ail pendant 2 minutes.||Ajouter les lamelles de bœuf et faire sauter jusqu\'à ce qu\'elles soient dorées, environ 5 minutes.||Incorporer les carottes et le poivron. Mélanger et cuire 5 minutes supplémentaires.||Ajouter les pâtes crues directement dans la poêle avec un verre d\'eau. Mélanger, couvrir et laisser cuire à feu moyen pendant 15 à 20 minutes en remuant régulièrement.||Assaisonner avec sel et poivre. Servir chaud.',
      });

      await db.insert('dish', {
        'imageUrl': 'assets/images/ratatouille.jpg',
        'title': 'Ratatouille',
        'description': 'La ratatouille est un plat traditionnel provençal à base de légumes mijotés.',
        'portions': 4,
        'preparation': 20,
        'cuisson': 45,
        'ingredients': '1 aubergine||2 courgettes||1 poivron rouge||1 poivron jaune||3 tomates||1 oignon||2 gousses d\'ail||Huile d\'olive||Herbes de Provence||Sel et poivre',
        'etapes': 'Couper tous les légumes en dés.||Faire revenir l\'oignon et l\'ail dans l\'huile d\'olive pendant 3 minutes.||Ajouter l\'aubergine et cuire 5 minutes.||Ajouter les courgettes, les poivrons et les tomates.||Assaisonner avec les herbes de Provence, le sel et le poivre.||Couvrir et laisser mijoter à feu doux pendant 35 minutes.',
      });

      await db.insert('dish', {
        'imageUrl': 'assets/images/quiche-legumes.jpg',
        'title': 'Quiche Lorraine',
        'description': 'La quiche lorraine est une tarte salée classique à base de lardons et de crème.',
        'portions': 6,
        'preparation': 15,
        'cuisson': 35,
        'ingredients': '1 pâte brisée||200 g de lardons||3 œufs||20 cl de crème fraîche||20 cl de lait||100 g de gruyère râpé||Sel, poivre et noix de muscade',
        'etapes': 'Préchauffer le four à 180°C.||Étaler la pâte brisée dans un moule à tarte.||Faire revenir les lardons à la poêle sans matière grasse.||Mélanger les œufs, la crème et le lait. Assaisonner.||Répartir les lardons sur la pâte, verser l\'appareil par-dessus.||Saupoudrer de gruyère râpé.||Cuire au four pendant 35 minutes jusqu\'à ce que la quiche soit dorée.',
      });
    },
  );

  return db!;
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
