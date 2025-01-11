class PaymentModel {
  final String id;
  final double amount;
  final DateTime date;
  final String status;

  PaymentModel({
    required this.id,
    required this.amount,
    required this.date,
    required this.status,
  });
}
