enum Category {
  all,
  ski,
  snowboard,
  skates,
  bicycle;

  String get displayName {
    switch (this) {
      case Category.all:
        return 'Все';
      case Category.ski:
        return 'Лыжи';
      case Category.snowboard:
        return 'Сноуборды';
      case Category.skates:
        return 'Коньки';
      case Category.bicycle:
        return 'Велосипеды';
    }
  }

  static Category fromString(String value) {
    switch (value.toLowerCase()) {
      case 'лыжи':
        return Category.ski;
      case 'сноуборды':
        return Category.snowboard;
      case 'коньки':
        return Category.skates;
      case 'велосипеды':
        return Category.bicycle;
      default:
        return Category.all;
    }
  }
}
