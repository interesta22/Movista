import 'package:flutter/material.dart';
import 'package:movista_app/shared/spacing.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/core/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';
import 'package:super_cupertino_navigation_bar/super_cupertino_navigation_bar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/customBottomBar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/now_playing_movies.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages.addAll([
      const HomeViewBodyDeep(),
      Center(child: Text('CourseDe')),
      Center(child: Text('GuidesAndInstructions')),
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Expanded(
                  child:
                      _selectedIndex == 0
                          ? _pages[_selectedIndex]
                          : _pages[_selectedIndex],
                ),
    );
  }
}

class HomeViewBodyDeep extends StatelessWidget {
  const HomeViewBodyDeep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      
      appBar: customAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NowPlayingMovies(),
              verticaalSpacing(32.h),
              ScrollableTab(
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
            ],
          ),
        ),
      ),
      
    );
  }
}

class MoviesTab extends StatelessWidget {
  const MoviesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 450.h, // عدل الارتفاع حسب الحاجة
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // صورتين في كل صف
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.w,
                childAspectRatio:
                    100 / 145, // تناسب العرض مع الارتفاع للصورة
              ),
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
        ),
      ),
    );
  }
}
