import 'package:border/core/theme/app_theme.dart';
import 'package:border/features/home/presentation/dashbord_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Border App',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),


      home: DashbordScreen(),
    );
  }
}
