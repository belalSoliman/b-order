import 'package:border/features/home/presentation/widgets/order_item.dart';

class OrderModel {
  final int? id;
  final String customerName;
  final double totalAmount;
  final DateTime date;
  final OrderStatus status;

  OrderModel({
    this.id,
    required this.customerName,
    required this.totalAmount,
    required this.date,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customerName': customerName,
      'totalAmount': totalAmount,
      'date': date.toIso8601String(),
      'status': status.name,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'],
      customerName: map['customerName'],
      totalAmount: map['totalAmount'],
      date: DateTime.parse(map['date']),
      status: OrderStatus.values.firstWhere(
        (e) => e.name == map['status'],
        orElse: () => OrderStatus.pending,
      ),
    );
  }
}