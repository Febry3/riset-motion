import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../routes/app_pages.dart';
import '../../../themes/colors.dart';
import '../../../themes/font.dart';
import '../../../themes/spaces.dart';
import '../controllers/onboarding_page_4_controller.dart';

class OnboardingPage4View extends GetView<OnboardingPage4Controller> {
  const OnboardingPage4View({super.key});
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
                "assets/onboard4.png",
                scale: 2,
              )),
              sby16,
              Text(
                'Sertifikasi Profesional',
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
                          'menyediakan sarana sertifikasi profesional agar menghasilkan produk tani yang sesuai dengan standar industri bioenergi',
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
                onTap: () {},
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
                currentStep: 4,
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
