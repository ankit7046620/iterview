import 'package:get/get.dart';

import '../modules/connectivity/bindings/connectivity_binding.dart';
import '../modules/connectivity/views/connectivity_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () =>   HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONNECTIVITY,
      page: () => const ConnectivityView(),
      binding: ConnectivityBinding(),
    ),
  ];
}
