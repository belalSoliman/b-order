import 'package:border/features/home/presentation/widgets/datewidget.dart';
import 'package:border/features/home/presentation/widgets/order_item.dart';
import 'package:border/features/order/presentation/create_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  // Generate dummy orders
  List<OrderData> _getDummyOrders() {
    return [
      OrderData(
        id: '1001',
        customerName: 'John Smith',
        totalAmount: 125.99,
        date: DateTime.now().subtract(const Duration(days: 2)),
        status: OrderStatus.delivered,
      ),
      OrderData(
        id: '1002',
        customerName: 'Sarah Johnson',
        totalAmount: 78.50,
        date: DateTime.now().subtract(const Duration(hours: 12)),
        status: OrderStatus.processing,
      ),
      OrderData(
        id: '1003',
        customerName: 'Michael Brown',
        totalAmount: 246.75,
        date: DateTime.now().subtract(const Duration(days: 1)),
        status: OrderStatus.pending,
      ),
      OrderData(
        id: '1004',
        customerName: 'Emily Davis',
        totalAmount: 34.99,
        date: DateTime.now().subtract(const Duration(days: 5)),
        status: OrderStatus.cancelled,
      ),
      OrderData(
        id: '1005',
        customerName: 'Robert Wilson',
        totalAmount: 189.25,
        date: DateTime.now(),
        status: OrderStatus.processing,
      ),
      OrderData(
        id: '1006',
        customerName: 'Jessica Miller',
        totalAmount: 67.80,
        date: DateTime.now().subtract(const Duration(hours: 36)),
        status: OrderStatus.delivered,
      ),
      OrderData(
        id: '1007',
        customerName: 'David Taylor',
        totalAmount: 112.45,
        date: DateTime.now().subtract(const Duration(days: 3)),
        status: OrderStatus.pending,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final dummyOrders = _getDummyOrders();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.r),
              child: DateWidget(date: DateTime.now()),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Text(
                'Recent Orders',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: dummyOrders.length,
                itemBuilder: (context, index) {
                  final order = dummyOrders[index];
                  return OrderItem(
                    orderId: order.id,
                    customerName: order.customerName,
                    orderAmount: order.totalAmount,
                    orderDate: order.date,
                    status: order.status,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Order #${order.id} details')),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Add this to imports

      // Add this button to your scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateOrderScreen()),
          );

          if (result == true) {
            // Refresh orders list if order was created
            setState(() {
              // Update orders list
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Order data model for dummy data
class OrderData {
  final String id;
  final String customerName;
  final double totalAmount;
  final DateTime date;
  final OrderStatus status;

  OrderData({
    required this.id,
    required this.customerName,
    required this.totalAmount,
    required this.date,
    required this.status,
  });
}
