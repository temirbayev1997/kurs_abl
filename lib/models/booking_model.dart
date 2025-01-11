enum BookingStatus { pending, confirmed, completed, cancelled }

class BookingModel {
  final String id;
  final String userId;
  final String inventoryId;
  final DateTime startDate;
  final DateTime endDate;
  final double totalPrice;
  final BookingStatus status;
  final String? deliveryAddress;
  final bool isDeliveryRequired;

  BookingModel({
    required this.id,
    required this.userId,
    required this.inventoryId,
    required this.startDate,
    required this.endDate,
    required this.totalPrice,
    required this.status,
    this.deliveryAddress,
    required this.isDeliveryRequired,
  });
}
