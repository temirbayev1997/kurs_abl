import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';
import '../services/equipment_service.dart';
import '../models/equipment.dart';
import './profile_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  final EquipmentService _equipmentService = EquipmentService();
  final _searchController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _cardHolderController = TextEditingController();
  final _expiryDateController = TextEditingController();
  final _cvvController = TextEditingController();
  
  List<Map<String, dynamic>> _orderHistory = []; 
  
  late TabController _tabController;
  List<Equipment> _equipment = [];
  List<Equipment> _cartItems = [];
  bool _isLoading = false;
  bool _hasReviewed = false;
  
  DateTime? _selectedDate;
  String _selectedDeliveryType = 'pickup';
  String _selectedRentalPeriod = 'week';
  
  int get cartItemCount => _cartItems.length;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadRecommendations();
  }

  Future<void> _loadRecommendations() async {
    setState(() => _isLoading = true);
    try {
      final recommendations = await _equipmentService.getRecommendations('user_id');
      setState(() => _equipment = recommendations);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _search(String query) async {
    setState(() => _isLoading = true);
    try {
      final results = await _equipmentService.searchEquipment(query);
      setState(() => _equipment = results);
    } finally {
      setState(() => _isLoading = false);
    }
  }
void _showOrderHistory() {
  showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'История заказов',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
            child: _orderHistory.isEmpty
                ? Center(child: Text('История заказов пуста'))
                : ListView.builder(
                    itemCount: _orderHistory.length,
                    itemBuilder: (context, index) {
                      final order = _orderHistory[index];
                      return Card(
                        child: ListTile(
                          title: Text('Заказ от ${_formatDate(order['date'])}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Сумма: ${order['total']} тг'),
                              Text('Способ доставки: ${order['deliveryType']}'),
                              Text('Период аренды: ${order['rentalPeriod']}'),
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.receipt_long),
                            onPressed: () => _showOrderDetails(order),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    ),
  );
}

String _formatDate(DateTime date) {
  return '${date.day}.${date.month}.${date.year} ${date.hour}:${date.minute}';
}

void _showOrderDetails(Map<String, dynamic> order) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Детали заказа'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Дата заказа: ${_formatDate(order['date'])}'),
            Text('Сумма: ${order['total']} тг'),
            Text('Способ доставки: ${order['deliveryType']}'),
            Text('Период аренды: ${order['rentalPeriod']}'),
            Divider(),
            Text('Товары:', style: TextStyle(fontWeight: FontWeight.bold)),
            ...(order['items'] as List<Equipment>).map(
              (item) => ListTile(
                title: Text(item.name),
                subtitle: Text(_getRentalPrice(item)),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Закрыть'),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    final authService = context.watch<AuthService>();

    return Scaffold(
appBar: AppBar(
  title: Text('Спортивный инвентарь'),
actions: [
  IconButton(
    icon: Icon(Icons.history),
    onPressed: () => _showOrderHistory(),
  ),
    Stack(
      children: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            _showCart(); // Добавьте этот метод
          },
        ),
        if (cartItemCount > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                '$cartItemCount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    ),
IconButton(
  icon: Icon(Icons.person),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  },
),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              // await authService.signOut();
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Инвентарь'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Вкладка с инвентарем
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Поиск инвентаря...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: _search,
                ),
              ),
              Expanded(
                child: _isLoading
                    ? Center(child: CircularProgressIndicator())
                    : _equipment.isEmpty
                        ? Center(child: Text('Нет доступного инвентаря'))
                        : ListView.builder(
                            itemCount: _equipment.length,
                            itemBuilder: (context, index) {
                              final item = _equipment[index];
                              return Card(
                                margin: EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: item.images.isNotEmpty
                                      ? Image.network(
                                          item.images.first,
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        )
                                      : Icon(Icons.sports),
                                  title: Text(item.name),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(item.description),
                                      Row(
                                        children: [
                                          Icon(Icons.star, size: 16, color: Colors.amber),
                                          Text(' ${item.rating.toStringAsFixed(1)} '),
                                          Text('(${item.reviewCount} отзывов)'),
                                        ],
                                      ),
                                    ],
                                  ),
trailing: Container(
  width: 140, // Фиксированная ширина
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        '${item.rentalPrices['day']} KZT/день',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 90, // Фиксированная ширина для кнопки
            height: 30, // Фиксированная высота для кнопки
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 4),
                textStyle: TextStyle(fontSize: 12),
              ),
              onPressed: () {
                // Навигация к экрану деталей
              },
              child: Text('Подробнее'),
            ),
          ),
          SizedBox(width: 4), // Отступ между кнопкой и иконкой
          SizedBox(
            width: 30, // Фиксированная ширина для иконки
            height: 30, // Фиксированная высота для иконки
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.add_shopping_cart, size: 20),
              onPressed: () => _addToCart(item),
            ),
          ),
        ],
      ),
    ],
  ),
),
                                  isThreeLine: true,
                                ),
                              );
                            },
                          ),
              ),
            ],
          ),
        ],
      ),
    );
  }
void _addToCart(Equipment item) {
  setState(() {
    _cartItems.add(item);
  });
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Добавлено'), // Изменено сообщение
      duration: Duration(seconds: 1), // Уменьшено время показа
      action: SnackBarAction(
        label: 'Отмена',
        onPressed: () {
          setState(() {
            _cartItems.remove(item);
          });
        },
      ),
    ),
  );
}


// Обновленный метод _showCart
void _showCart() {
  showModalBottomSheet(
    isScrollControlled: true, // Добавлено для предотвращения переполнения
    context: context,
    builder: (context) => SingleChildScrollView( // Обернуто в SingleChildScrollView
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Добавлено для предотвращения переполнения
          children: [
            Text(
              'Корзина',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Container(
              height: 200, // Фиксированная высота для списка
              child: _cartItems.isEmpty
                  ? Center(child: Text('Корзина пуста'))
                  : ListView.builder(
                      itemCount: _cartItems.length,
                      itemBuilder: (context, index) {
                        final item = _cartItems[index];
                        return ListTile(
                          leading: item.images.isNotEmpty
                              ? Image.network(
                                  item.images.first,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )
                              : Icon(Icons.sports),
                          title: Text(item.name),
                          subtitle: Text(_getRentalPrice(item)),
                          trailing: IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              setState(() {
                                _cartItems.removeAt(index);
                              });
                              Navigator.pop(context);
                              _showCart();
                            },
                          ),
                        );
                      },
                    ),
            ),
            if (_cartItems.isNotEmpty) ...[
              SizedBox(height: 16),
              // Выбор периода аренды
              DropdownButton<String>(
                value: _selectedRentalPeriod,
                items: [
                  DropdownMenuItem(value: 'week', child: Text('1 неделя - 5000 тг')),
                  DropdownMenuItem(value: 'twoWeeks', child: Text('2 недели - 7000 тг')),
                  DropdownMenuItem(value: 'month', child: Text('1 месяц - 14000 тг')),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedRentalPeriod = value!;
                  });
                },
              ),
              // Выбор даты
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text(_selectedDate == null 
                    ? 'Выберите дату'
                    : 'Дата: ${_selectedDate!.day}.${_selectedDate!.month}.${_selectedDate!.year}'),
              ),
              // Выбор способа доставки
              RadioListTile(
                title: Text('Самовывоз'),
                value: 'pickup',
                groupValue: _selectedDeliveryType,
                onChanged: (value) {
                  setState(() {
                    _selectedDeliveryType = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('Доставка (+1000 тг)'),
                value: 'delivery',
                groupValue: _selectedDeliveryType,
                onChanged: (value) {
                  setState(() {
                    _selectedDeliveryType = value.toString();
                  });
                },
              ),
              // Ввод данных карты
// Замените существующий блок ввода карты на этот:
Column(
  children: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: _cardNumberController,
        decoration: InputDecoration(
          labelText: 'Номер карты',
          hintText: 'XXXX XXXX XXXX XXXX',
        ),
        keyboardType: TextInputType.number,
        maxLength: 16,
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: _cardHolderController,
        decoration: InputDecoration(
          labelText: 'Имя владельца',
          hintText: 'IVAN IVANOV',
        ),
        textCapitalization: TextCapitalization.characters,
      ),
    ),
    Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _expiryDateController,
              decoration: InputDecoration(
                labelText: 'Срок действия',
                hintText: 'MM/YY',
              ),
              keyboardType: TextInputType.number,
              maxLength: 5,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _cvvController,
              decoration: InputDecoration(
                labelText: 'CVV',
                hintText: '***',
              ),
              keyboardType: TextInputType.number,
              maxLength: 3,
              obscureText: true,
            ),
          ),
        ),
      ],
    ),
  ],
),

              Text(
                'Итого: ${_calculateTotal()} тг',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ElevatedButton(
                onPressed: () => _processOrder(),
                child: Text('Оформить заказ'),
              ),
            ],
          ],
        ),
      ),
    ),
  );
}

// Добавьте эти вспомогательные методы
Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.now().add(Duration(days: 30)),
  );
  if (picked != null) {
    setState(() {
      _selectedDate = picked;
    });
  }
}

String _getRentalPrice(Equipment item) {
  switch (_selectedRentalPeriod) {
    case 'week':
      return '5000 тг/неделя';
    case 'twoWeeks':
      return '7000 тг/2 недели';
    case 'month':
      return '14000 тг/месяц';
    default:
      return '5000 тг/неделя';
  }
}

int _calculateTotal() {
  int basePrice;
  switch (_selectedRentalPeriod) {
    case 'week':
      basePrice = 5000;
      break;
    case 'twoWeeks':
      basePrice = 7000;
      break;
    case 'month':
      basePrice = 14000;
      break;
    default:
      basePrice = 5000;
  }
  
  int deliveryFee = _selectedDeliveryType == 'delivery' ? 1000 : 0;
  return (basePrice * _cartItems.length) + deliveryFee;
}

void _processOrder() {
  if (_selectedDate == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Пожалуйста, выберите дату')),
    );
    return;
  }

  if (_cardNumberController.text.length != 16) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Пожалуйста, введите корректный номер карты')),
    );
    return;
  }

  if (_cardHolderController.text.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Пожалуйста, введите имя владельца карты')),
    );
    return;
  }

  if (!_isValidExpiryDate(_expiryDateController.text)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Пожалуйста, введите корректный срок действия карты')),
    );
    return;
  }

  if (_cvvController.text.length != 3) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Пожалуйста, введите корректный CVV код')),
    );
    return;
  }

  // Добавление заказа в историю
  final order = {
    'date': DateTime.now(),
    'items': List<Equipment>.from(_cartItems),
    'total': _calculateTotal(),
    'deliveryType': _selectedDeliveryType,
    'rentalPeriod': _selectedRentalPeriod,
    'selectedDate': _selectedDate,
  };

  setState(() {
    _orderHistory.add(order);
    _cartItems.clear(); // Очистка корзины
  });

  // Очистка данных формы
  _cardNumberController.clear();
  _cardHolderController.clear();
  _expiryDateController.clear();
  _cvvController.clear();
  _selectedDate = null;

  Navigator.pop(context);
  _showOrderConfirmation();
}

bool _isValidExpiryDate(String date) {
  if (!date.contains('/') || date.length != 5) return false;
  
  final parts = date.split('/');
  if (parts.length != 2) return false;
  
  final month = int.tryParse(parts[0]);
  final year = int.tryParse(parts[1]);
  
  if (month == null || year == null) return false;
  if (month < 1 || month > 12) return false;
  
  final now = DateTime.now();
  final expiry = DateTime(2000 + year, month);
  return expiry.isAfter(now);
}


void _showOrderConfirmation() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Заказ оформлен'),
      content: Text('Спасибо за заказ! Хотите оставить отзыв?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Позже'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            _showReviewDialog();
          },
          child: Text('Оставить отзыв'),
        ),
      ],
    ),
  );
}

void _showReviewDialog() {
  final _reviewController = TextEditingController();
  double _rating = 5.0;

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Оставить отзыв'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Slider(
            value: _rating,
            min: 1,
            max: 5,
            divisions: 4,
            label: _rating.toString(),
            onChanged: (value) {
              setState(() {
                _rating = value;
              });
            },
          ),
          TextField(
            controller: _reviewController,
            decoration: InputDecoration(
              labelText: 'Ваш отзыв',
              hintText: 'Расскажите о вашем опыте...',
            ),
            maxLines: 3,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Отмена'),
        ),
        ElevatedButton(
          onPressed: () {
            // Здесь должна быть логика сохранения отзыва
            setState(() {
              _hasReviewed = true;
            });
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Спасибо за ваш отзыв!')),
            );
          },
          child: Text('Отправить'),
        ),
      ],
    ),
  );
}

  void _showBookingDialog(BuildContext context, DateTime date, slot) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Подтверждение бронирования'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Дата: ${date.day}.${date.month}.${date.year}'),
            Text('Время: ${slot.startTime.format(context)} - ${slot.endTime.format(context)}'),
            SizedBox(height: 16),
            Text('Выберите способ получения:'),
            RadioListTile(
              title: Text('Самовывоз'),
              value: DeliveryType.pickup,
              groupValue: DeliveryType.pickup,
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text('Доставка'),
              value: DeliveryType.delivery,
              groupValue: DeliveryType.pickup,
              onChanged: (value) {},
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Отмена'),
          ),
          ElevatedButton(
            onPressed: () {
              // Логика подтверждения бронирования
              Navigator.pop(context);
            },
            child: Text('Подтвердить'),
          ),
        ],
      ),
    );
  }

@override
void dispose() {
  _searchController.dispose();
  _tabController.dispose();
  _cardNumberController.dispose();
  _cardHolderController.dispose();
  _expiryDateController.dispose();
  _cvvController.dispose();
  super.dispose();
}
}

enum DeliveryType { pickup, delivery }
