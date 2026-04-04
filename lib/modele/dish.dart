
class Dish {
  final String imageUrl;
  final String title;
  final String description;
  final int portions;
  final int preparation;
  final int cuisson;
  final List<String> ingredients;
  final List<String> etapes;

  const Dish({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.portions,
    required this.preparation,
    required this.cuisson,
    required this.ingredients,
    required this.etapes
  });
}
