import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/not_found_page/bindings/not_found_page_binding.dart';
import '../modules/not_found_page/views/not_found_page_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/transfer/bindings/transfer_binding.dart';
import '../modules/transfer/views/transfer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TRANSFER,
      page: () => const TransferView(),
      binding: TransferBinding(),
    ),
    GetPage(
      name: _Paths.NOT_FOUND_PAGE,
      page: () => const NotFoundPageView(),
      binding: NotFoundPageBinding(),
    ),
  ];
}
