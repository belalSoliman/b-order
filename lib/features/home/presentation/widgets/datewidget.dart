// widgets that show the date
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  final DateTime? date;

  const DateWidget({super.key, this.date});

  @override
  Widget build(BuildContext context) {
    final dateToShow = date ?? DateTime.now();
    final formattedDate = DateFormat('EEEE, MMMM d, yyyy').format(dateToShow);

    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          formattedDate,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
