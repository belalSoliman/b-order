import 'package:border/features/home/presentation/widgets/datewidget.dart';
import 'package:flutter/material.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [Center(child: DateWidget(date: DateTime.now()))],
          ),
        ),
      ),
    );
  }
}
