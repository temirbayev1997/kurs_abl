// models/equipment.dart
class Equipment {
  final String id;
  final String name;
  final String description;
  final List<String> images;
  final Map<String, int> rentalPrices;
  final double rating;
  final int reviewCount;
  final String category;
  final String condition;
  final Map<String, String> specifications;

  Equipment({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.rentalPrices,
    required this.category,
    required this.condition,
    required this.specifications,
    this.rating = 0.0,
    this.reviewCount = 0,
  });
}
