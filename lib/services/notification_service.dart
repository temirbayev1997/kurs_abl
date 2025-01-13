import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await _notifications.initialize(initializationSettings);
  }

  Future<void> showRentalConfirmation(String equipmentName, DateTime rentalDate) async {
    await _notifications.show(
      0,
      'Аренда подтверждена',
      'Вы арендовали $equipmentName на ${rentalDate.day}.${rentalDate.month}.${rentalDate.year}',
      NotificationDetails(
        android: AndroidNotificationDetails(
          'rental_channel',
          'Аренда',
          importance: Importance.high,
        ),
      ),
    );
  }

  Future<void> showReturnReminder(String equipmentName, DateTime returnDate) async {
    await _notifications.show(
      1,
      'Напоминание о возврате',
      'Не забудьте вернуть $equipmentName до ${returnDate.day}.${returnDate.month}.${returnDate.year}',
      NotificationDetails(
        android: AndroidNotificationDetails(
          'return_channel',
          'Возврат',
          importance: Importance.high,
        ),
      ),
    );
  }

  Future<void> showPromotion(String title, String description) async {
    await _notifications.show(
      2,
      title,
      description,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'promo_channel',
          'Акции',
          importance: Importance.high, 
        ),
      ),
    );
  }
}
