import 'package:get/get.dart';

import '../controllers/onboarding_page_2_controller.dart';

class OnboardingPage2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingPage2Controller>(
      () => OnboardingPage2Controller(),
    );
  }
}
