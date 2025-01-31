import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:riset_motion/app/routes/app_pages.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordNewPasswordView extends StatefulWidget {
  const ForgotPasswordNewPasswordView({super.key});

  @override
  State<ForgotPasswordNewPasswordView> createState() =>
      _ForgotPasswordNewPasswordViewState();
}

class _ForgotPasswordNewPasswordViewState
    extends State<ForgotPasswordNewPasswordView> {
  final controller = Get.find<ForgotPasswordController>();
  bool isNewPasswordVisible = false;
  bool isConfrimPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lupa Kata Sandi'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jangan khawatir",
                style: TextStyle(fontSize: 32),
                softWrap: true,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Mari kita selesaikan ini agar bisnismu berjalan dengan baik",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(240, 107, 107, 107),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Kata Sandi Baru",
                style: TextStyle(fontSize: 16),
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
                            hintText: "Masukkan Kata Sandi Baru",
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                isNewPasswordVisible
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.remove_red_eye,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  isNewPasswordVisible = !isNewPasswordVisible;
                                });
                              },
                            ),
                          ),
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
                style: TextStyle(fontSize: 16),
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
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            hintText: "Masukkan Konfirmasi Kata Sandi",
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                isConfrimPasswordVisible
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.remove_red_eye,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  isConfrimPasswordVisible =
                                      !isConfrimPasswordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.LOGIN),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xFF6B6B6B),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Ubah Kata Sandi",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
