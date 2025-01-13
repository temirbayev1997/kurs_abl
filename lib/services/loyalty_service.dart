class LoyaltyService {
  static const int POINTS_PER_RENTAL = 10;
  static const int POINTS_FOR_TIMELY_RETURN = 5;
  
  final Map<String, String> userStatuses = {
    'NEWBIE': 'Новичок',
    'REGULAR': 'Постоянный клиент',
    'VIP': 'VIP клиент',
    'PREMIUM': 'Премиум клиент',
  };

  final Map<String, int> statusThresholds = {
    'REGULAR': 100,
    'VIP': 300,
    'PREMIUM': 1000,
  };

  final Map<String, double> statusDiscounts = {
    'NEWBIE': 0.0,
    'REGULAR': 0.05,
    'VIP': 0.10,
    'PREMIUM': 0.15,
  };
}
