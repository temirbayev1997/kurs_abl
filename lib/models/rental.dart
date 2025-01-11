enum RentalStatus { active, completed, cancelled }
enum DeliveryType { pickup, delivery }

class Rental {
  final String id;
  final String equipmentId;
  final String userId;
  final DateTime startDate;
  final DateTime endDate;
  final double totalPrice;
  final RentalStatus status;
  final DeliveryType deliveryType;
  final String? deliveryAddress;

  Rental({
    required this.id,
    required this.equipmentId,
    required this.userId,
    required this.startDate,
    required this.endDate,
    required this.totalPrice,
    required this.status,
    required this.deliveryType,
    this.deliveryAddress,
  });
}
