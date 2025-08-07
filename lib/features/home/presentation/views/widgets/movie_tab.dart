import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoviesTab extends StatelessWidget {
  const MoviesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 420.h, // عدل الارتفاع حسب الحاجة أو حسب ارتفاع التاب
        child: GridView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
            childAspectRatio: 100 / 145,
          ),
          itemCount: 20,
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(16.sp),
            child: Image.network(
              'https://image.tmdb.org/t/p/w200/53dsJ3oEnBhTBVMigWJ9tkA5bzJ.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
