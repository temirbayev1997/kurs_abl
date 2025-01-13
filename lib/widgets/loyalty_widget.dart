import 'package:flutter/material.dart';
import '../models/user_loyalty.dart';
import '../services/loyalty_service.dart';

class LoyaltyWidget extends StatelessWidget {
  final UserLoyalty loyalty;
  final LoyaltyService loyaltyService;

  const LoyaltyWidget({
    super.key,
    required this.loyalty,
    required this.loyaltyService,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ваш статус: ${loyaltyService.userStatuses[loyalty.status]}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Icon(
                  _getStatusIcon(loyalty.status),
                  color: _getStatusColor(loyalty.status),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Баллы: ${loyalty.points}'),
            LinearProgressIndicator(
              value: _getProgressToNextStatus(loyalty),
            ),
            SizedBox(height: 8),
            Text(
              'До следующего уровня: ${_getPointsToNextStatus(loyalty)} баллов',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 16),
            Text(
              'Ваши бонусы:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _buildBonusList(loyalty.bonuses),
          ],
        ),
      ),
    );
  }

  Widget _buildBonusList(List<LoyaltyBonus> bonuses) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: bonuses.length,
      itemBuilder: (context, index) {
        final bonus = bonuses[index];
        return ListTile(
          leading: Icon(_getBonusIcon(bonus.type)),
          title: Text(_getBonusDescription(bonus)),
          subtitle: Text(
            'Действует до: ${bonus.expiryDate.day}.${bonus.expiryDate.month}.${bonus.expiryDate.year}',
          ),
          trailing: bonus.isUsed
              ? Icon(Icons.check_circle, color: Colors.green)
              : null,
        );
      },
    );
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'PREMIUM':
        return Icons.diamond;
      case 'VIP':
        return Icons.star;
      case 'REGULAR':
        return Icons.verified_user;
      default:
        return Icons.person;
    }
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'PREMIUM':
        return Colors.purple;
      case 'VIP':
        return Colors.amber;
      case 'REGULAR':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  double _getProgressToNextStatus(UserLoyalty loyalty) {
    final nextStatus = _getNextStatus(loyalty.status);
    if (nextStatus == null) return 1.0;
    
    final threshold = loyaltyService.statusThresholds[nextStatus]!;
    final previousThreshold = loyalty.status == 'NEWBIE' 
        ? 0 
        : loyaltyService.statusThresholds[loyalty.status]!;
    
    return (loyalty.points - previousThreshold) / 
           (threshold - previousThreshold);
  }

  String? _getNextStatus(String currentStatus) {
    switch (currentStatus) {
      case 'NEWBIE':
        return 'REGULAR';
      case 'REGULAR':
        return 'VIP';
      case 'VIP':
        return 'PREMIUM';
      default:
        return null;
    }
  }

  int _getPointsToNextStatus(UserLoyalty loyalty) {
    final nextStatus = _getNextStatus(loyalty.status);
    if (nextStatus == null) return 0;
    
    final threshold = loyaltyService.statusThresholds[nextStatus]!;
    return threshold - loyalty.points;
  }

  IconData _getBonusIcon(String type) {
    switch (type) {
      case 'DISCOUNT':
        return Icons.discount;
      case 'FREE_RENTAL':
        return Icons.card_giftcard;
      case 'FREE_DELIVERY':
        return Icons.local_shipping;
      default:
        return Icons.card_giftcard;
    }
  }

  String _getBonusDescription(LoyaltyBonus bonus) {
    switch (bonus.type) {
      case 'DISCOUNT':
        return 'Скидка ${bonus.value}%';
      case 'FREE_RENTAL':
        return 'Бесплатная аренда на ${bonus.value} дней';
      case 'FREE_DELIVERY':
        return 'Бесплатная доставка';
      default:
        return 'Бонус';
    }
  }
}
