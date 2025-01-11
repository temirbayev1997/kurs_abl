class Review {
  final String id;
  final String equipmentId;
  final String userId;
  final double rating;
  final String comment;
  final List<String>? photos;
  final DateTime date;

  Review({
    required this.id,
    required this.equipmentId,
    required this.userId,
    required this.rating,
    required this.comment,
    this.photos,
    required this.date,
  });
}

