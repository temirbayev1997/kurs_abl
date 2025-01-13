class UserLoyalty {
  int points;
  String status;
  List<LoyaltyBonus> bonuses;
  DateTime lastRental;
  int consecutiveRentals;

  UserLoyalty({
    this.points = 0,
    this.status = 'NEWBIE',
    List<LoyaltyBonus>? bonuses,
    DateTime? lastRental,
    this.consecutiveRentals = 0,
  }) : 
    this.bonuses = bonuses ?? [],
    this.lastRental = lastRental ?? DateTime.now();
}

class LoyaltyBonus {
  String type;
  int value;
  DateTime expiryDate;
  bool isUsed;

  LoyaltyBonus({
    required this.type,
    required this.value,
    required this.expiryDate,
    this.isUsed = false,
  });
}
