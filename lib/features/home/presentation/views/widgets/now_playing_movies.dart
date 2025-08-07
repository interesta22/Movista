import 'package:flutter/material.dart';
import 'package:movista_app/shared/spacing.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/core/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NowPlayingMovies extends StatelessWidget {
  const NowPlayingMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 280.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => SizedBox(
            width: 145.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.sp),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w200/53dsJ3oEnBhTBVMigWJ9tkA5bzJ.jpg',
                    width: 145.w,
                    height: 210.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Movie Title $index',
                  style: AppTextStyles.font17BlackMedium.copyWith(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.orange,
                      size: 16.sp,
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.star,
                      color: AppColors.orange,
                      size: 16.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.orange,
                      size: 16.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.orange,
                      size: 16.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.orange,
                      size: 16.sp,
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => horizentalSpacing(16.w),
        ),
      ),
    );
  }
}