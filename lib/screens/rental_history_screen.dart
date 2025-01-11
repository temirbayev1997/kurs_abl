import 'package:flutter/material.dart';
import '../models/rental_history_model.dart';

class RentalHistoryScreen extends StatefulWidget {
  @override
  _RentalHistoryScreenState createState() => _RentalHistoryScreenState();
}

class _RentalHistoryScreenState extends State<RentalHistoryScreen> {
  List<RentalHistoryModel> _rentals = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadRentals();
  }

  Future<void> _loadRentals() async {
    // Имитация загрузки данных
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _rentals = [
        RentalHistoryModel(
          id: '1',
          inventoryId: '1',
          inventoryName: 'Горный велосипед',
          startDate: DateTime.now(),
          endDate: DateTime.now().add(Duration(days: 3)),
          totalPrice: 15000,
          status: RentalStatus.active,
          isDeliveryRequired: true,
          deliveryAddress: 'ул. Примерная, 123',
          lessorContact: '+7 777 123 45 67',
        ),
        // Добавьте больше примеров
      ];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('История аренды'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _rentals.length,
              itemBuilder: (context, index) {
                return RentalHistoryCard(rental: _rentals[index]);
              },
            ),
    );
  }
}

class RentalHistoryCard extends StatelessWidget {
  final RentalHistoryModel rental;

  const RentalHistoryCard({required this.rental});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  rental.inventoryName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buildStatusChip(rental.status),
              ],
            ),
            SizedBox(height: 8),
            Text('Период аренды:'),
            Text(
              '${_formatDate(rental.startDate)} - ${_formatDate(rental.endDate)}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Стоимость: ${rental.totalPrice} KZT'),
            if (rental.isDeliveryRequired && rental.deliveryAddress != null) ...[
              SizedBox(height: 8),
              Text('Адрес доставки: ${rental.deliveryAddress}'),
            ],
            SizedBox(height: 8),
            Text('Контакты арендодателя: ${rental.lessorContact}'),
            SizedBox(height: 16),
            if (rental.status == RentalStatus.active ||
                rental.status == RentalStatus.pending)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () => _showCancelDialog(context),
                    child: Text('Отменить'),
                  ),
                  ElevatedButton(
                    onPressed: () => _showModifyDialog(context),
                    child: Text('Изменить'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(RentalStatus status) {
    Color color;
    String text;

    switch (status) {
      case RentalStatus.active:
        color = Colors.green;
        text = 'Активная';
        break;
      case RentalStatus.completed:
        color = Colors.blue;
        text = 'Завершена';
        break;
      case RentalStatus.cancelled:
        color = Colors.red;
        text = 'Отменена';
        break;
      case RentalStatus.pending:
        color = Colors.orange;
        text = 'Ожидает';
        break;
    }

    return Chip(
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}.${date.month}.${date.year}';
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Отмена аренды'),
        content: Text('Вы уверены, что хотите отменить аренду?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Нет'),
          ),
          ElevatedButton(
            onPressed: () {
              // Добавьте логику отмены аренды
              Navigator.pop(context);
            },
            child: Text('Да'),
          ),
        ],
      ),
    );
  }

  void _showModifyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Изменение аренды'),
        content: Text('Функция изменения аренды будет доступна позже'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('ОК'),
          ),
        ],
      ),
    );
  }
}
