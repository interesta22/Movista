import 'package:flutter/material.dart';
import 'package:movista_app/shared/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NowPlayingMovies extends StatelessWidget {
  const NowPlayingMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        height: 210.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(16.sp),
            child: Image.network(
              'https://image.tmdb.org/t/p/w200/53dsJ3oEnBhTBVMigWJ9tkA5bzJ.jpg',
              width: 145.w,
              height: 210.h,
              fit: BoxFit.cover,
            ),
          ),
          separatorBuilder: (context, index) => horizentalSpacing(16.w),
        ),
      ),
    );
  }
}
