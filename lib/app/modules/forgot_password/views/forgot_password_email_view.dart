import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordEmailView extends GetView<ForgotPasswordController> {
  const ForgotPasswordEmailView({super.key});
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.chevron_left,
            size: 30,
          ),
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
                "Email",
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
                    width: 1,
                    color: Color.fromARGB(240, 107, 107, 107),
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
                height: 32,
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
                child: Center(
                  child: Text(
                    "Mengirim email",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
