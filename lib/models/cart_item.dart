import 'equipment.dart';

enum DeliveryType { pickup, delivery }

class CartItem {
  final Equipment equipment;
  final DateTime startDate;
  final DateTime endDate;
  final DeliveryType deliveryType;
  final String? deliveryAddress;
  final double totalPrice;

  CartItem({
    required this.equipment,
    required this.startDate,
    required this.endDate,
    required this.deliveryType,
    this.deliveryAddress,
    required this.totalPrice,
  });
}
