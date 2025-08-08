import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movista_app/core/theme/colors.dart';
import 'package:movista_app/shared/service_locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movista_app/features/home/data/repos/home_repo.dart';
import 'package:movista_app/features/home/data/repos/home_repo_imp.dart';
import 'package:movista_app/features/home/presentation/views/home_view.dart';
import 'package:movista_app/features/home/presentation/manager/discover_movies_cubit/discover_movies_cubit.dart';
import 'package:movista_app/features/home/presentation/manager/categeory_movies_cubit.dart/categeory_movies_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //   await Hive.initFlutter();
  //   Hive.registerAdapter(VehicleTypeAdapter());
  // Hive.registerAdapter(RiderModelAdapter());
  // Hive.registerAdapter(RideModelAdapter());

  // await Hive.openBox(HiveConstants.ridesBox);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => DiscoverMoviesCubit(getIt<HomeRepoImp>()),
            ),
            BlocProvider(
              create: (context) => CategeoryMoviesCubit(getIt<HomeRepoImp>()),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'خليها علينا',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: AppColors.primary,
              appBarTheme: AppBarTheme(
                backgroundColor: AppColors.primary,
                titleTextStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
                iconTheme: IconThemeData(color: AppColors.white),
              ),
            ),
            home: child,
          ),
        );
      },
      child: HomeView(),
    );
  }
}
