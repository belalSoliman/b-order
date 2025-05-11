import 'package:border/core/theme/app_theme.dart';
import 'package:border/features/home/presentation/dashbord_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ScreenUtilInit wraps your MaterialApp
    return ScreenUtilInit(
      // Design size is based on your UI design's reference device
      designSize: const Size(
        375,
        812,
      ), // iPhone X dimensions (common reference)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Border App',
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          
          home: const DashbordScreen(),
        );
      },
    );
  }
}
