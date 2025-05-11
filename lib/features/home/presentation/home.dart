import 'package:border/features/home/presentation/widgets/datewidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Border App',

      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [DateWidget(date: DateTime.now())]),
          ),
        ),
      ),
    );
  }
}
