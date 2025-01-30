import 'package:get/get.dart';
import 'package:riset_motion/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:riset_motion/app/modules/forgot_password/views/forgot_password_email_view.dart';
import 'package:riset_motion/app/modules/forgot_password/views/forgot_password_new_password_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FORGOT_PASSWORD_NEW_PASSWORD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_EMAIL,
      page: () => const ForgotPasswordEmailView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_NEW_PASSWORD,
      page: () => const ForgotPasswordNewPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
  ];
}
