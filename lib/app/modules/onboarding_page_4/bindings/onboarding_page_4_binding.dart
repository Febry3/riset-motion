import 'package:get/get.dart';

import '../controllers/onboarding_page_4_controller.dart';

class OnboardingPage4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingPage4Controller>(
      () => OnboardingPage4Controller(),
    );
  }
}
