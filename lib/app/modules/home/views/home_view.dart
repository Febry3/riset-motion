import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:riset_motion/app/themes/colors.dart';
import 'package:riset_motion/app/themes/font.dart';
import 'package:riset_motion/app/themes/spaces.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 32,
            ),
            homeHeader(),
            sby32,
            currentWeatherWidget(),
            sby32,
            titleAndArrow("Terakhir kali dilihat"),
            sby24,
            RecentViewedWidget(),
            sby32,
            titleAndArrow("Topik hangat"),
            sby16,
            Container(
              width: double.infinity,
              height: 212,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        sbX12,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pak Tani Tarno",
                              style: h4SemiBold,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Iconsax.user,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Petani",
                                  style: h4Regular,
                                ),
                                sbx8,
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: primaryColor,
                                ),
                                sbx8,
                                Text(
                                  "3 jam yang lalu",
                                  style: h4Regular,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      "Apa Saja Tahapan Utama dalam Mengolah Tebu Menjadi Bioetanol?",
                      style: h4SemiBold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonWidget(Icons.thumb_up_alt_rounded, 9),
                        Row(
                          children: [
                            buttonWidget(Iconsax.messages_25, 9,
                                color: primaryColor),
                            sbx8,
                            buttonWidget(
                              Icons.share,
                              9,
                              color: primaryColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buttonWidget(IconData icon, int number, {Color? color}) {
    return Container(
      height: 32,
      width: 56,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.1,
                blurRadius: 0.1,
                offset: Offset(0.5, 1))
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          sbx8,
          Text(
            number.toString(),
            style: h5SemiBold,
          )
        ],
      ),
    );
  }

  Row titleAndArrow(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: h3SemiBold,
        ),
        Icon(
          Iconsax.arrow_right_1,
          color: Colors.grey,
        )
      ],
    );
  }
}

class RecentViewedWidget extends StatelessWidget {
  const RecentViewedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 12,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            height: 220,
            width: 191,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/onboard1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bab 1-Latar Belakang",
                          style: h5SemiBold,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Iconsax.book_1,
                                ),
                                sbx8,
                                Text("5m")
                              ],
                            ),
                            sbX16,
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Iconsax.message_2,
                                    ),
                                    sbx8,
                                    Text("5")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget homeHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selamat Datang,",
            style: h3Regular,
          ),
          Text(
            "Pak Tani Tano",
            style: h2SemiBold,
          ),
        ],
      ),
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Iconsax.notification),
            ),
          ),
          sbX12,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Iconsax.user),
            ),
          )
        ],
      ),
    ],
  );
}

Widget currentWeatherWidget() {
  return Container(
    height: 184,
    width: 380,
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cuaca hari ini",
            style: h3SemiBold,
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(Iconsax.cloud),
                  sbx8,
                  Text(
                    "32°C",
                    style: h4Regular,
                  ),
                ],
              ),
              sbX16,
              Row(
                children: [
                  Icon(Iconsax.location),
                  sbx8,
                  Text(
                    "Madiun, Jawa Timur",
                    style: h4Regular,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/check-circle.svg",
                  ),
                  Text(
                    "Kondisi ini cocok untuk menanam tebu!",
                    style: h5Regular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
