import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:riset_motion/app/routes/app_pages.dart';
import 'package:riset_motion/app/themes/colors.dart';
import 'package:riset_motion/app/themes/font.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.chevron_left,
            size: 30,
          ),
          title: Text(
            'Buat Akun',
            style: h2SemiBold,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buat bisnis anda lebih baik",
                style: h1Regular,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Email",
                style: h4Regular,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 64,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6B6B6B),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline_rounded,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      VerticalDivider(
                        width: 5,
                        indent: 12,
                        endIndent: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Masukkan Email",
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Kata Sandi",
                style: h4Regular,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 64,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6B6B6B),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline_rounded,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      VerticalDivider(
                        width: 5,
                        indent: 12,
                        endIndent: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Masukkan Kata Sandi",
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Konfirmasi Kata Sandi",
                style: h4Regular,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 64,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6B6B6B),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline_rounded,
                        size: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      VerticalDivider(
                        width: 5,
                        indent: 12,
                        endIndent: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Konfirmasi Kata Sandi",
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.ONBOARDING_PAGE_1),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Buat Akun",
                      style: h4Regular.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  "Atau",
                  style: h4Regular,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6B6B6B),
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/google-logo.png",
                      scale: 1.75,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Masuk dengan Google",
                      style: h4Regular,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                  child: RichText(
                text: TextSpan(
                  text: '',
                  style: h4Regular,
                  children: [
                    TextSpan(
                      text: 'Sudah punya akun? ',
                    ),
                    TextSpan(
                      text: 'Masuk disini',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.LOGIN);
                        },
                    ),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
