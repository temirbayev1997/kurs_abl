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
    'day': 5000,
    'week': 30000,
    'month': 100000,
  },
  rating: 4.8,
  reviewCount: 45,
  category: 'Велосипеды',
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
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.9,
        reviewCount: 32,
        category: 'Легкая Атлетика',
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
          'day': 6000,
          'week': 35000,
          'month': 120000,
        },
        rating: 4.7,
        reviewCount: 28,
        category: 'Сноуборды',
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
          'day': 1000,
          'week': 6000,
          'month': 20000,
        },
        rating: 4.6,
        reviewCount: 15,
        category: 'Легкая Атлетика',
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
          'day': 1500,
          'week': 9000,
          'month': 30000,
        },
        rating: 4.8,
        reviewCount: 22,
        category: 'Легкая Атлетика',
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
          'day': 1000,
          'week': 6000,
          'month': 20000,
        },
        rating: 4.5,
        reviewCount: 12,
        category: 'Наборы',
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
          'day': 2500,
          'week': 15000,
          'month': 50000,
        },
        rating: 4.7,
        reviewCount: 18,
        category: 'Коньки',
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
          'day': 3000,
          'week': 18000,
          'month': 60000,
        },
        rating: 4.9,
        reviewCount: 25,
        category: 'Наборы',
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
          'day': 1500,
          'week': 9000,
          'month': 30000,
        },
        rating: 4.6,
        reviewCount: 20,
        category: 'Уличный Спорт',
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
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.8,
        reviewCount: 30,
        category: 'Тяжелые Инвентарь',
      ),
      Equipment(
        id: '11',
        name: 'Велосипед VIVA GINA Синий',
        description: 'Городской велосипед с низкой рамой',
        images: [
          'https://fit-sport.kz/images/product/velik/gina/a07u7qszi4v306ixvpdqkqmaa0aeasau.png',
        ],
        specifications: {
          'Максимальный вес': '14,4кг',
          'Материал': 'Алюмминивый сплав, Сталь',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 4000,
          'week': 12000,
          'month': 40000,
        },
        rating: 3.5,
        reviewCount: 40,
        category: 'Велосипеды',
      ),
      Equipment(
        id: '12',
        name: 'Велосипед VIVA TAGS Желтый/черный ',
        description: 'Представляем велосипед Viva TAGS, BMX байк для экстремальной езды, велосипед для тех, кто хочет доминировать на скейт-парке или на уличной трассе. ',
        images: [
          'https://fit-sport.kz/images/product/velik/tags/xtqn295hvi7lhmg18brhuwa9qul22jhi.jpg',
        ],
        specifications: {
          'Максимальный вес': '15 кг',
          'Материал': 'Сталь',
          'Скорости': 'Oдна скорость.',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 3500,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.9,
        reviewCount: 35,
        category: 'Велосипеды',
      ),
      Equipment(
        id: '13',
        name: 'Гантели разборные(1шт)',
        description: 'Набор разборных гантелей с блинами',
        images: [
          'https://images.satu.kz/198766411_w640_h640_198766411.jpg',
        ],
        specifications: {
          'Максимальный вес': '15кг каждая',
          'Материал': 'Сталь',
          'Комплектация': 'Гриф, блины, замки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.1,
        reviewCount: 10,
        category: 'Тяжелые Инвентарь',
      ),
      Equipment(
        id: '14',
        name: 'Универсальный тренажер для приседаний DHZ Super Squat ',
        description: 'Профессиональный тренажер для коммерческого использования.',
        images: [
          'https://fit-sport.kz/images/product/silovie_trenazheri/e3065.jpg',
        ],
        specifications: {
          'Максимальный вес': '150кг',
          'Объем': '1,5',
          'Профиль (диаметр) трубы, мм': '100/50',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 7000,
          'week': 20000,
          'month': 70000,
        },
        rating: 4.8,
        reviewCount: 10,
        category: 'Тяжелые Инвентарь',
      ),
      Equipment(
        id: '15',
        name: 'Беговая дорожка SHUA SH-T5500',
        description: 'Беговая дорожка SHUA SH-T5500. Электрические дорожки купить в магазине Fitsport.',
        images: [
          'https://fit-sport.kz/images/product/begovye_photo/T5500/1.png',
        ],
        specifications: {
          'Максимальный вес': '85кг',
          'Тип Двигателя': 'постоянного тока DC',
          'Особенности конструкции': 'запатентованное технология амортизации беговой зоны',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 5000,
          'week': 9000,
          'month': 40000,
        },
        rating: 4.5,
        reviewCount: 31,
        category: 'Легкая Атлетика',
      ),
      Equipment(
        id: '16',
        name: 'Ракетка PS 6.1 21 BLX 2 WRT531400',
        description: 'Ракетка PS 6.1 21 BLX 2 WRT531400',
        images: [
          'https://fit-sport.kz/images/product/tennis/wrt531400/1wrt531400.jpg',
        ],
        specifications: {
          'Максимальный вес': '248 г',
          'Материал': 'графит',
          'Размер ручки': '3',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 2000,
          'week': 9000,
          'month': 30000,
        },
        rating: 4.8,
        reviewCount: 10,
        category: 'Легкая Атлетика',
      ),
      Equipment(
        id: '17',
        name: 'Ракетка SIXONE 95 BLX WRT70020U',
        description: 'Ракетка SIXONE 95 BLX WRT70020U.',
        images: [
          'https://fit-sport.kz/images/product/tennis/wrt70020u/1wrt70020u.jpg',
        ],
        specifications: {
          'Максимальный вес': '332 г',
          'Материал': 'базальт/графит',
          'Размер ручки': '3',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 3500,
          'week': 7000,
          'month': 20000,
        },
        rating: 4.1,
        reviewCount: 2,
        category: 'Легкая Атлетика',
      ),
      Equipment(
        id: '18',
        name: 'Лыжи СК 185 Белый Classic',
        description: 'Лыжи СК 185 Белый Classic.',
        images: [
          'https://fit-sport.kz/images/product/lyzhy/ckclassic/white/white1.jpg',
        ],
        specifications: {
          'Максимальный вес': '1кг',
          'Материал': 'Дерево, пластик',
          'Жесткость': 'средняя',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.8,
        reviewCount: 30,
        category: 'Легкая Атлетика',
      ),
      Equipment(
        id: '19',
        name: 'Гиря с уретановым покрытием 18кг MDBUDDY',
        description: 'Гиря с уретановым покрытием 18кг MDBUDDY MD2220 штука.',
        images: [
          'https://fit-sport.kz/images/product/heavyfitsportkz/md222018/md2220181.jpg',
        ],
        specifications: {
          'Максимальный вес': '18 кг',
          'Материал': 'Сталь',
          'Цвет': 'черный',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 1500,
          'week': 9000,
          'month': 25000,
        },
        rating: 4.8,
        reviewCount: 100,
        category: 'Тяжелые Инвентарь'
      ),
      Equipment(
        id: '20',
        name: 'Бодибар PU 2кг HYGGE HG1156 ',
        description: 'Бодибар PU 2кг HYGGE HG1156 штука.',
        images: [
          'https://fit-sport.kz/images/product/heavyfitsportkz/hg11562/hg115621.jpg',
        ],
        specifications: {
          'Максимальный вес': '2кг',
          'Материал': 'Сталь',
          'Цвет':'желтый'      
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.8,
        reviewCount: 52,
        category: 'Тяжелые Инвентарь',
      ),
      Equipment(
        id: '21',
        name: 'Диск обрезиненный черный 10кг Ok PRO OK 2037B',
        description: 'Диск обрезиненный черный. Диаметр посадочной втулки 50 мм',
        images: [
          'https://fit-sport.kz/images/product/heavyfitsportkz/ok2037b10/ok2037v101.jpg',
        ],
        specifications: {
          'Максимальный вес': '10кг',
          'Материал': 'Сталь, пластик',
          'Цвет': 'черный',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 3,
        reviewCount: 1,
        category: 'Тяжелые Инвентарь',
      ),
      Equipment(
        id: '22',
        name: 'Медицинбол обрезиненный 1кг HYGGE HG1275',
        description: 'Материал: резина, вес 1 кг. Текстурированная поверхность, цвет комбинированный в соответствии с весом. Габариты в упаковке 20*20*20 см',
        images: [
          'https://fit-sport.kz/images/product/fitness/hg12751/hg12751-1.jpg',
        ],
        specifications: {
          'Максимальный вес': '1кг',
          'Цвет': 'голубой',
          'Тип товара': 'Медицинбол',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 1000,
          'week': 5000,
          'month': 23000,
        },
        rating: 4.1,
        reviewCount: 15,
        category: 'Легкая Атлетика',
      ),
      Equipment(
        id: '23',
        name: 'Набор эспандеров трубчатых HYGGE HG1357 ',
        description: 'Набор эспандеров трубчатых. Материал латекс.',
        images: [
          'https://fit-sport.kz/images/product/fitness/hg1357/hg1357-1.jpg',
        ],
        specifications: {
          'Максимальный вес': '2 кг',
          'Материал': 'латекс',
          'Комплектация': 'Лямки, Тропы, Ручки',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.8,
        reviewCount: 30,
        category: 'Наборы',
      ),
      Equipment(
        id: '24',
        name: 'Мяч гимнастический PVC Anti-Burst 85см HYGGE HG1225',
        description: 'Материал экологически чистый, нетоксичный и безопасный PVC (ECO-Friendly), диаметр 85 см., вес 1500 гр. Система анти-взрыв',
        images: [
          'https://fit-sport.kz/images/product/fitness/hg122515/hg122515-1.jpg',
        ],
        specifications: {
          'Максимальный вес': '1кг',
          'Диаметр': '85 см',
          'Цвет': 'серый',
        },
        condition: 'Хорошее',
        rentalPrices: {
          'day': 700,
          'week': 4500,
          'month': 12000,
        },
        rating: 3.1,
        reviewCount: 40,
        category: 'Легкая Атлетика',
      ),
      Equipment(
        id: '25',
        name: 'Ролики для фитнеса для взрослых черно-серебристые FIT100',
        description: 'Вы нашли идеальную пару для начала катания или коротких поездок на роликах. Научитесь безопасно и комфортно ехать, поворачивать и тормозить.',
        images: [
          'https://contents.mediadecathlon.com/p2075873/k0109625342e5e5b879c3f69bdcefad8d/2075873.jpg?format=auto&quality=70&f=800x800',
        ],
        specifications: {
          'Колеса': '76 мм',
          'Вес': '2,5 кг – вес пары роликов',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 4000,
          'week': 15000,
          'month': 50000,
        },
        rating: 4.8,
        reviewCount: 30,
        category: 'Уличный Спорт',
      ),
      Equipment(
        id: '26',
        name: 'Ролик для пресса с матом HYGGE HG1474',
        description: 'Материал PVC и пластик ABS, Размер 32,5*21,8 см. В комплекте коврик из EVA. Вес нетто 1,2 кг. Габариты в упаковке 19*11*22 см.',
        images: [
          'https://fit-sport.kz/images/product/fitness/hg1474/hg1474-1.jpg',
        ],
        specifications: {
          'Максимальный вес': '1кг',
          'Цвет': 'зеленый/серый',
          'Комплектация': 'Коврик из EVA. ',
        },
        condition: 'Отличное',
        rentalPrices: {
          'day': 2000,
          'week': 12000,
          'month': 40000,
        },
        rating: 4.8,
        reviewCount: 10,
        category: 'Легкая Атлетика',
      ),
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

