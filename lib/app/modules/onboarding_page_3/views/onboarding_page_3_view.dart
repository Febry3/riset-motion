import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../routes/app_pages.dart';
import '../../../themes/colors.dart';
import '../../../themes/font.dart';
import '../../../themes/spaces.dart';
import '../controllers/onboarding_page_3_controller.dart';

class OnboardingPage3View extends GetView<OnboardingPage3Controller> {
  const OnboardingPage3View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        actions: [
          Row(
            children: [
              Text("Lewati"),
              sbx8,
              Icon(Icons.arrow_right_alt_rounded),
            ],
          )
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
                "assets/onboard3.png",
                scale: 2,
              )),
              sby16,
              Text(
                'Video Edukatif',
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
                          'membantu para petani dalam menyediakan bahan ajar berupa video edukatif yang relevan dengan bioenergi',
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
                  Get.toNamed(Routes.ONBOARDING_PAGE_4);
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
                currentStep: 3,
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
