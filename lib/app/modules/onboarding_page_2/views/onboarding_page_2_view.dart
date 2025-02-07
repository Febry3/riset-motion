import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../routes/app_pages.dart';
import '../../../themes/colors.dart';
import '../../../themes/font.dart';
import '../../../themes/spaces.dart';
import '../controllers/onboarding_page_2_controller.dart';

class OnboardingPage2View extends GetView<OnboardingPage2Controller> {
  const OnboardingPage2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        actions: [
          Text(
            "Lewati",
            style: h4Regular,
          ),
          sbx8,
          Icon(Icons.arrow_right_alt_rounded),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "assets/onboard2.png",
                scale: 2,
              )),
              sby16,
              Text(
                'Forum Diskusi',
                style: h3SemiBold,
              ),
              sby12,
              RichText(
                text: TextSpan(
                  text: '',
                  style: Title2SemiBold.copyWith(color: primaryColor),
                  children: [
                    TextSpan(
                      text: 'Aplikasi ',
                    ),
                    TextSpan(
                      text:
                          'menyediakan forum bagi para petani untuk berdiskusi dan  menyampaikan informasi terkait pengolahan bioenergi',
                      style: Title2,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.REGISTER);
                        },
                    ),
                  ],
                ),
              ),
              sby16,
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.ONBOARDING_PAGE_3);
                },
                child: Center(
                    child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 38,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Lanjutkan",
                      style: Title2.copyWith(color: whiteColor),
                    ),
                  ),
                )),
              ),
              sby12,
              StepProgressIndicator(
                totalSteps: 4,
                currentStep: 2,
                selectedColor: primaryColor,
                unselectedColor: primaryColor.withOpacity(0.5),
                size: 10.0,
                roundedEdges: Radius.circular(25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
