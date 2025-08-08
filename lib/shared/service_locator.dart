import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movista_app/shared/api_service.dart';
import 'package:movista_app/features/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(apiService: getIt<ApiService>()));
}