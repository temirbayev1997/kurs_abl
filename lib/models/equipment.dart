class Equipment {
  final String id;
  final String name;
  final String description;
  final List<String> images;
  final Map<String, dynamic> specifications;
  final String condition;
  final Map<String, double> rentalPrices; 
  final double rating;
  final int reviewCount;

  Equipment({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.specifications,
    required this.condition,
    required this.rentalPrices,
    this.rating = 0.0,
    this.reviewCount = 0,
  });
}
