import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:riset_motion/app/modules/home/views/home_view.dart';
import 'package:riset_motion/app/themes/colors.dart';
import 'package:riset_motion/app/themes/font.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      HomeView(),
    ];
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: [_pages[controller.selectedIndex.value]],
        ),
      ),
      bottomNavigationBar: SizedBox(
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (index) {
              controller.updateIndex(index);
            },
            backgroundColor: Colors.white,
            selectedItemColor: primaryColor,
            selectedLabelStyle: h6SemiBold,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(Iconsax.home),
                  ),
                  label: 'Beranda'),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(Iconsax.book_1),
                  ),
                  label: 'Materi'),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(Iconsax.message),
                  ),
                  label: 'Forum'),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(Iconsax.video),
                  ),
                  label: 'Video'),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Iconsax.task_square),
                ),
                label: 'Sertifikasi',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
