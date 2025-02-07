import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:riset_motion/app/routes/app_pages.dart';
import 'package:riset_motion/app/themes/colors.dart';
import 'package:riset_motion/app/themes/font.dart';
import 'package:riset_motion/app/themes/spaces.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.chevron_left,
            size: 30,
          ),
          title: const Text('Masuk'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat datang di",
                style: h1Regular,
              ),
              Text(
                "Aplikasi",
                style: h1Regular.copyWith(color: primaryColor),
              ),
              sby16,
              Text(
                "Email",
                style: h4Regular,
              ),
              sby8,
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xFFe6e6e6),
                  borderRadius: BorderRadius.circular(15),
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
                              hintStyle: h4Regular,
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
                  color: Color(0xFFe6e6e6),
                  borderRadius: BorderRadius.circular(15),
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
                              hintStyle: h4Regular,
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: isChecked, onChanged: (isChecked) => {}),
                      Text(
                        "Ingat kata sandi",
                        style: h4Regular,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () =>
                          Get.toNamed(Routes.FORGOT_PASSWORD_NEW_PASSWORD),
                      child: Text(
                        "Lupa kata sandi?",
                        style: h4Regular,
                      ))
                ],
              ),
              SizedBox(
                width: 16,
              ),
              GestureDetector(
                  onTap: () => Get.toNamed(Routes.ONBOARDING_PAGE_1),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 38,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Masuk",
                        style: Title2.copyWith(color: whiteColor),
                      ),
                    ),
                  )),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  "Atau",
                  style: TextStyle(fontSize: 16),
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
                      style: TextStyle(fontSize: 14),
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
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Belum punya akun? ',
                    ),
                    TextSpan(
                      text: 'Buat disini',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.REGISTER);
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
