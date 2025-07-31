import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/core/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      SalomonBottomBarItem(
        icon: Icon(
          HugeIcons.strokeRoundedHome03,
          color: AppColors.secondary,
          size: 25,
        ),
        title: Text(
          'Home',
          style: AppTextStyles.font17BlackMedium.copyWith(
            fontSize: 16.sp,
            color: AppColors.secondary,
          ),
        ),
        selectedColor: AppColors.secondary,
      ),
      SalomonBottomBarItem(
        icon: Icon(
          HugeIcons.strokeRoundedSearch01,
          color: AppColors.secondary,
          size: 25,
        ),
        title: Text(
          'Search',
          style: AppTextStyles.font17BlackMedium.copyWith(
            fontSize: 16.sp,
            color: AppColors.secondary,
          ),
        ),
        selectedColor: AppColors.secondary,
      ),
      SalomonBottomBarItem(
        icon: Icon(
          HugeIcons.strokeRoundedBookBookmark01,
          color: AppColors.secondary,
          size: 25,
        ),
        title: Text(
          'Bookmarks',
          style: AppTextStyles.font17BlackMedium.copyWith(
            fontSize: 16.sp,
            color: AppColors.secondary,
          ),
        ),
        selectedColor: AppColors.secondary,
      ),
    ];

    return SalomonBottomBar(
      backgroundColor: AppColors.primary,
      currentIndex: currentIndex,
      onTap: onTap,
      items: items,
    );
  }
}
