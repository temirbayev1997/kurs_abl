class PaymentDetails {
  final String cardNumber;
  final String expiryDate;
  final String cvv;
  final double amount;

  PaymentDetails({
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
    required this.amount,
  });
}

class DeliveryDetails {
  final bool isDelivery;
  final String? address;
  final DateTime deliveryTime;

  DeliveryDetails({
    required this.isDelivery,
    this.address,
    required this.deliveryTime,
  });
}

class Owner {
  final String name;
  final String phone;
  final String email;
  final String address;

  Owner({
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
  });
}

// Payment Service
class PaymentService {
  Future<bool> processPayment(PaymentDetails payment) async {
    // Здесь будет интеграция с реальной платёжной системой
    try {
      // Имитация процесса оплаты
      await Future.delayed(Duration(seconds: 2));
      return true;
    } catch (e) {
      print('Payment error: $e');
      return false;
    }
  }
}
