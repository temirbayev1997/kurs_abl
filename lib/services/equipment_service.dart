import '../models/equipment.dart';

class EquipmentService {
  List<Equipment> getAllEquipment() {
    return [
      Equipment(
        id: '1',
        name: 'Профессиональный велосипед Trek',
        description: 'Горный велосипед для профессиональных тренировок',
        images: [
          'https://giant.md/public/products/15/5259715/Gri/thumbs/version_655x460x0/1.jpg',
        ],
        specifications: {
          'Размер рамы': '19"',
          'Материал': 'Алюминий',
          'Количество скоростей': '21',
          'Тип тормозов': 'Дисковые',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 5000.0,
          'week': 30000.0,
          'month': 100000.0,
        },
        rating: 4.8,
        reviewCount: 45,
      ),
      Equipment(
        id: '2',
        name: 'Теннисная ракетка Wilson Pro',
        description: 'Профессиональная ракетка для большого тенниса',
        images: [
          'https://limpopo.kz/image/cache//catalog/d_o_p/easyphoto/316819/wr080410-1-1200x1200.jpg',
        ],
        specifications: {
          'Вес': '300г',
          'Материал': 'Графит',
          'Размер грипа': '2',
        },
        condition: 'Новое',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.9,
        reviewCount: 32,
      ),
      Equipment(
        id: '3',
        name: 'Сноуборд Burton Custom',
        description: 'Универсальный сноуборд для фрирайда и парка',
        images: [
          'https://limpopo.kz/image/cache//catalog/d_o_p/easyphoto/381240/10688110960-4-1200x1200.jpg',
        ],
        specifications: {
          'Длина': '158см',
          'Жесткость': 'Средняя',
          'Стиль': 'All-mountain',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 6000.0,
          'week': 35000.0,
          'month': 120000.0,
        },
        rating: 4.7,
        reviewCount: 28,
      ),
      Equipment(
        id: '4',
        name: 'Комплект для йоги',
        description: 'Коврик, блоки и ремень для йоги',
        images: [
          'https://content.rozetka.com.ua/goods/images/big/428843289.jpg',
        ],
        specifications: {
          'Толщина коврика': '6мм',
          'Материал': 'Экологичный ПВХ',
          'Комплектация': 'Коврик, 2 блока, ремень',
        },
        condition: 'Новое',
        rentalPrices: {
          'day': 1000.0,
          'week': 6000.0,
          'month': 20000.0,
        },
        rating: 4.6,
        reviewCount: 15,
      ),
      Equipment(
        id: '5',
        name: 'Боксерские перчатки Everlast',
        description: 'Профессиональные перчатки для бокса',
        images: [
          'https://ir.ozone.ru/s3/multimedia-8/wc1000/6549784304.jpg',
        ],
        specifications: {
          'Вес': '12 унций',
          'Материал': 'Натуральная кожа',
          'Тип': 'Тренировочные',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 1500.0,
          'week': 9000.0,
          'month': 30000.0,
        },
        rating: 4.8,
        reviewCount: 22,
      ),
      Equipment(
        id: '6',
        name: 'Набор для бадминтона',
        description: 'Две ракетки и воланы для бадминтона',
        images: [
          'https://cdn1.ozone.ru/s3/multimedia-7/6076715827.jpg',
        ],
        specifications: {
          'Количество ракеток': '2',
          'Количество воланов': '3',
          'Материал': 'Алюминий/Нейлон',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 1000.0,
          'week': 6000.0,
          'month': 20000.0,
        },
        rating: 4.5,
        reviewCount: 12,
      ),
      Equipment(
        id: '7',
        name: 'Роликовые коньки Rollerblade',
        description: 'Комфортные ролики для городского катания',
        images: [
          'https://resources.cdn-kaspi.kz/img/m/p/he2/hd8/63805973626910.jpg?format=gallery-medium',
        ],
        specifications: {
          'Размер': '42',
          'Жесткость колес': '84A',
          'Подшипники': 'ABEC-7',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2500.0,
          'week': 15000.0,
          'month': 50000.0,
        },
        rating: 4.7,
        reviewCount: 18,
      ),
      Equipment(
        id: '8',
        name: 'Палатка Coleman',
        description: '4-местная палатка для кемпинга',
        images: [
          'https://images.satu.kz/100171162_w640_h640_palatka-soleman-mod.jpg',
        ],
        specifications: {
          'Вместимость': '4 человека',
          'Водостойкость': '3000мм',
          'Вес': '4.5кг',
        },
        condition: 'Новое',
        rentalPrices: {
          'day': 3000.0,
          'week': 18000.0,
          'month': 60000.0,
        },
        rating: 4.9,
        reviewCount: 25,
      ),
      Equipment(
        id: '9',
        name: 'Скейтборд Penny',
        description: 'Компактный пенниборд для городского катания',
        images: [
          'https://ir-3.ozone.ru/s3/multimedia-l/wc1000/6013834497.jpg',
        ],
        specifications: {
          'Длина': '22"',
          'Материал деки': 'Пластик',
          'Подшипники': 'ABEC-7',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 1500.0,
          'week': 9000.0,
          'month': 30000.0,
        },
        rating: 4.6,
        reviewCount: 20,
      ),
      Equipment(
        id: '10',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '11',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '12',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '13',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '14',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '15',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '16',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '17',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '18',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '19',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '20',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '21',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '22',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '23',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '24',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '25',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '26',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '27',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '28',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '29',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      ),
      Equipment(
        id: '30',
        name: 'Гантели разборные',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '20кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000.0,
          'week': 12000.0,
          'month': 40000.0,
        },
        rating: 4.8,
        reviewCount: 30,
      )
    ];
  }

  Future<List<Equipment>> searchEquipment(String query) async {
    // Имитация поиска
    await Future.delayed(Duration(milliseconds: 500));
    final allEquipment = getAllEquipment();
    if (query.isEmpty) return allEquipment;
    
    return allEquipment
        .where((equipment) =>
            equipment.name.toLowerCase().contains(query.toLowerCase()) ||
            equipment.description.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Future<List<Equipment>> getRecommendations(String userId) async {
    // Имитация получения рекомендаций
    await Future.delayed(Duration(milliseconds: 500));
    final allEquipment = getAllEquipment();
    // В реальном приложении здесь была бы логика персонализации
    return allEquipment.where((equipment) => equipment.rating >= 4.7).toList();
  }
}

