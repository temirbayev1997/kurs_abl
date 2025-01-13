// lib/models/rental_point.dart
class RentalPoint {
  final String id;
  final String name;
  final String address;
  final double latitude;
  final double longitude;
  final List<String> availableEquipment;
  final String workingHours;

  RentalPoint({
    required this.id,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.availableEquipment,
    required this.workingHours,
  });
}
