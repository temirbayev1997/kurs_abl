class ReviewModel {
  final String id;
  final String userId;
  final String userName;
  final String inventoryId;
  final double rating;
  final String comment;
  final DateTime createdAt;

  ReviewModel({
    required this.id,
    required this.userId,
    required this.userName,
    required this.inventoryId,
    required this.rating,
    required this.comment,
    required this.createdAt,
  });
}
