import 'package:flutter/material.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/core/theme/font_wieght.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



abstract class AppTextStyles{
  static TextStyle font17WhiteMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white
  );
  static TextStyle font17BlackMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white
  );
  static TextStyle font17BlackRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.white
  );
  static TextStyle font20BlackBold = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white
  );
} 