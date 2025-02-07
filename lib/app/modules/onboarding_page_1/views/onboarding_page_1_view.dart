import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:riset_motion/app/themes/colors.dart';
import 'package:riset_motion/app/themes/font.dart';
import 'package:riset_motion/app/themes/spaces.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../routes/app_pages.dart';
import '../controllers/onboarding_page_1_controller.dart';

class OnboardingPage1View extends GetView<OnboardingPage1Controller> {
  const OnboardingPage1View({super.key});
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
                "assets/onboard1.png",
                scale: 2,
              )),
              sby16,
              Text(
                'Materi Up To Date',
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
                          'membantu para petani dalam menyediakan materi pengolahan bahan menjadi bioenergi dengan materi up to date',
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
                  Get.toNamed(Routes.ONBOARDING_PAGE_2);
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
                currentStep: 1,
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
