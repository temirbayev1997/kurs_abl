class PaymentCard {
  final String number;
  final String holderName;
  final String expiryDate;
  final String cvv;

  PaymentCard({
    required this.number,
    required this.holderName,
    required this.expiryDate,
    required this.cvv,
  });
}
