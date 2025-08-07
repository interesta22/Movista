import 'dart:math';
import 'package:flutter/material.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/core/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_cupertino_navigation_bar/models/super_appbar.model.dart';
import 'package:super_cupertino_navigation_bar/models/super_search_bar.model.dart';
import 'package:super_cupertino_navigation_bar/models/super_large_title.model.dart';

SuperAppBar customAppBar({required String title}) {
  return SuperAppBar(
    largeTitle: SuperLargeTitle(
      largeTitle: title,
      textStyle: AppTextStyles.font20BlackBold.copyWith(fontSize: 23.sp),
    ),
    backgroundColor: AppColors.primary,
    title: Text(title, style: AppTextStyles.font20BlackBold),
    searchBar: SuperSearchBar(
      scrollBehavior: SearchBarScrollBehavior.pinned,
      enabled: true,
      onChanged: (query) {
        // Search Bar Changes
      },
      onSubmitted: (query) {
        // On Search Bar submitted
      },
      // Add other search bar properties as needed
    ),
  );
}
