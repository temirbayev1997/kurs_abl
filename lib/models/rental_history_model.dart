enum RentalStatus {
  active,
  completed,
  cancelled,
  pending
}

class RentalHistoryModel {
  final String id;
  final String inventoryId;
  final String inventoryName;
  final DateTime startDate;
  final DateTime endDate;
  final double totalPrice;
  final RentalStatus status;
  final bool isDeliveryRequired;
  final String? deliveryAddress;
  final String lessorContact;

  RentalHistoryModel({
    required this.id,
    required this.inventoryId,
    required this.inventoryName,
    required this.startDate,
    required this.endDate,
    required this.totalPrice,
    required this.status,
    required this.isDeliveryRequired,
    this.deliveryAddress,
    required this.lessorContact,
  });
}
