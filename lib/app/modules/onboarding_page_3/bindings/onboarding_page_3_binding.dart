import 'package:get/get.dart';

import '../controllers/onboarding_page_3_controller.dart';

class OnboardingPage3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingPage3Controller>(
      () => OnboardingPage3Controller(),
    );
  }
}
