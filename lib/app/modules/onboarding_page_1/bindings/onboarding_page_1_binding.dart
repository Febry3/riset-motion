import 'package:get/get.dart';

import '../controllers/onboarding_page_1_controller.dart';

class OnboardingPage1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingPage1Controller>(
      () => OnboardingPage1Controller(),
    );
  }
}
