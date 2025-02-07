import 'package:get/get.dart';

import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_email_view.dart';
import '../modules/forgot_password/views/forgot_password_new_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding_page_1/bindings/onboarding_page_1_binding.dart';
import '../modules/onboarding_page_1/views/onboarding_page_1_view.dart';
import '../modules/onboarding_page_2/bindings/onboarding_page_2_binding.dart';
import '../modules/onboarding_page_2/views/onboarding_page_2_view.dart';
import '../modules/onboarding_page_3/bindings/onboarding_page_3_binding.dart';
import '../modules/onboarding_page_3/views/onboarding_page_3_view.dart';
import '../modules/onboarding_page_4/bindings/onboarding_page_4_binding.dart';
import '../modules/onboarding_page_4/views/onboarding_page_4_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER;

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
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE_1,
      page: () => const OnboardingPage1View(),
      binding: OnboardingPage1Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE_2,
      page: () => const OnboardingPage2View(),
      binding: OnboardingPage2Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE_3,
      page: () => const OnboardingPage3View(),
      binding: OnboardingPage3Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE_4,
      page: () => const OnboardingPage4View(),
      binding: OnboardingPage4Binding(),
    ),
  ];
}
