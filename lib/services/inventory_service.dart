import '../models/inventory_model.dart';

class InventoryService {
  // Имитация данных
  static List<InventoryModel> _mockInventory = [
    InventoryModel(
      id: '1',
      name: 'Велосипед горный',
      description: 'Профессиональный горный велосипед для активного отдыха',
      images: ['assets/bike1.jpg'],
      pricePerDay: 1000,
      pricePerWeek: 5000,
      pricePerMonth: 15000,
      condition: 'Новый',
      specifications: {
        'Размер рамы': 'L',
        'Вес': '12 кг',
        'Материал': 'Алюминий',
      },
      rating: 4.5,
      isAvailable: true,
    ),
        InventoryModel(
      id: '2',
      name: 'Ганетля 15 кг',
      description: 'Подходит для занятие спорта',
      images: ['assets/bike1.jpg'],
      pricePerDay: 1000,
      pricePerWeek: 5000,
      pricePerMonth: 15000,
      condition: 'Новый',
      specifications: {
        'Вес': '15 кг',
        'Материал': 'Железо и Пластик',
      },
      rating: 4.2,
      isAvailable: true,
    ),
    // Добавьте больше тестовых данных
  ];

  Future<List<InventoryModel>> getInventory() async {
    await Future.delayed(Duration(seconds: 1)); // Имитация задержки сети
    return _mockInventory;
  }

  Future<List<InventoryModel>> searchInventory(String query) async {
    await Future.delayed(Duration(milliseconds: 500));
    return _mockInventory
        .where((item) =>
            item.name.toLowerCase().contains(query.toLowerCase()) ||
            item.description.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
