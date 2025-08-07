import 'package:flutter/material.dart';
import 'package:movista_app/shared/spacing.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/core/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';
import 'package:super_cupertino_navigation_bar/super_cupertino_navigation_bar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/movie_tab.dart';
import 'package:movista_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/now_playing_movies.dart';

class HomeViewBodyDeep extends StatelessWidget {
  const HomeViewBodyDeep({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      appBar: customAppBar(title: "What do you want to watch?"),
      // ...existing code...
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 280.h, // حدد ارتفاع مناسب حسب التصميم
                child: NowPlayingMovies(),
              ),
              verticaalSpacing(16.h),
              SizedBox(
                height: 500.h, // حدد ارتفاع مناسب للتابس والمحتوى
                child: ScrollableTab(
                  centerGap: 16.w,
                  indicatorColor: AppColors.secondary,
                  dividerColor: AppColors.primary,
                  isScrollable: true,
                  physics: const BouncingScrollPhysics(),
                  labelStyle: AppTextStyles.font17BlackRegular,
                  unselectedLabelColor: AppColors.white,
                  labelColor: AppColors.secondary,
                  tabs: [
                    Tab(text: 'Now Plying'),
                    Tab(text: 'Upcoming'),
                    Tab(text: 'Top Rated'),
                    Tab(text: 'Popular'),
                  ],
                  children: [
                    MoviesTab(),
                    MoviesTab(),
                    MoviesTab(),
                    MoviesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // ...existing code...
    );
  }
}

