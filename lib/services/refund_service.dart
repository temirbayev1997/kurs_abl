import 'package:flutter/material.dart';

class RefundService {
  Future<bool> processRefund(String paymentId, double amount) async {
    // Имитация обработки возврата
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  Future<double> calculateRefundAmount(
      DateTime bookingStart, DateTime bookingEnd, double totalAmount) async {
    final now = DateTime.now();
    final daysUntilStart = bookingStart.difference(now).inDays;

    if (daysUntilStart >= 7) {
      return totalAmount;
    } else if (daysUntilStart >= 3) {
      return totalAmount * 0.7;
    } else if (daysUntilStart >= 1) {
      return totalAmount * 0.5;
    } else {
      return 0;
    }
  }
}
