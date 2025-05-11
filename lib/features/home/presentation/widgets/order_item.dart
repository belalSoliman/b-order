// order irem widget that display prefe of the order in the list
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderItem extends StatelessWidget {
  final String orderId;
  final String customerName;
  final double orderAmount;
  final DateTime orderDate;
  final OrderStatus status;
  final VoidCallback onTap;

  const OrderItem({
    super.key,
    required this.orderId,
    required this.customerName,
    required this.orderAmount,
    required this.orderDate,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .05),
              blurRadius: 8.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order #$orderId',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  _buildStatusChip(context),
                ],
              ),
              SizedBox(height: 12.h),

              // Customer name
              Row(
                children: [
                  Icon(Icons.person_outline, size: 18.r, color: Colors.grey),
                  SizedBox(width: 8.w),
                  Text(
                    customerName,
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 8.h),

              // Order date
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 18.r, color: Colors.grey),
                  SizedBox(width: 8.w),
                  Text(
                    _formatDate(orderDate),
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              // Order amount
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Total: ', style: TextStyle(fontSize: 16.sp)),
                  Text(
                    '\$${orderAmount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context) {
    Color backgroundColor;
    Color textColor = Colors.white;
    String statusText = status.name;

    switch (status) {
      case OrderStatus.pending:
        backgroundColor = Colors.orange;
        break;
      case OrderStatus.processing:
        backgroundColor = Colors.blue;
        break;
      case OrderStatus.delivered:
        backgroundColor = Colors.green;
        break;
      case OrderStatus.cancelled:
        backgroundColor = Colors.red;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        statusText,
        style: TextStyle(
          color: textColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

enum OrderStatus { pending, processing, delivered, cancelled }
