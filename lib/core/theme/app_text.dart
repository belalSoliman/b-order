import 'package:flutter/material.dart';
import 'package:border/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // Light Theme Text Styles
  static  TextStyle headlineLarge = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.onBackground,
  );
  
  static  TextStyle headlineMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.onBackground,
  );
  
  static  TextStyle headlineSmall = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.onBackground,
  );
  
  static  TextStyle bodyLarge = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.onBackground,
  );
  
  static  TextStyle bodyMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.onBackground,
  );
  
  static  TextStyle bodySmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.onBackground,
  );
  
  // Dark Theme Text Styles
  static  TextStyle headlineLargeDark = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.onBackgroundDark,
  );
  
  static  TextStyle headlineMediumDark = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.onBackgroundDark,
  );
  
  static  TextStyle headlineSmallDark = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.onBackgroundDark,
  );
  
  static  TextStyle bodyLargeDark = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.onBackgroundDark,
  );
  
  static  TextStyle bodyMediumDark = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.onBackgroundDark,
  );
  
  static  TextStyle bodySmallDark = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.onBackgroundDark,
  );
}