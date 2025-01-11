class InventoryModel {
  final String id;
  final String name;
  final String description;
  final List<String> images;
  final double pricePerDay;
  final double pricePerWeek;
  final double pricePerMonth;
  final String condition;
  final Map<String, String> specifications;
  final double rating;
  final bool isAvailable;

  InventoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.pricePerDay,
    required this.pricePerWeek,
    required this.pricePerMonth,
    required this.condition,
    required this.specifications,
    required this.rating,
    required this.isAvailable,
  });
}
