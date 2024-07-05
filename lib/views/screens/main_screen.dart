import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_screen_controller.dart';
import '../../utils/app_colors.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      body: Obx(()=>controller.views[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(()=>Container(
        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical:12),
        decoration: BoxDecoration(
          color: kPrimaryDarkColor,
          boxShadow: const [
            BoxShadow(
              offset: Offset(-1, -2),
              color: Colors.black38,
              spreadRadius: 1,
              blurRadius: 2,
            ),
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: BottomNavigationBar(
          elevation: 8,
          backgroundColor: Colors.transparent,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onTabChanged,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          items: [
            BottomNavigationBarItem(
              tooltip: "Home",
              label: "Home",
              icon: Image.asset(
                "assets/icons/home.png",
                color: controller.selectedIndex.value == 0?kWhiteColor:kLightGreyColor,
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
                tooltip: "Progress",
                label: "Progress",
                // icon: Icon(Icons.note_alt_outlined),
                icon: Image.asset(
                  "assets/icons/progress.png",
                  color: controller.selectedIndex.value == 1?kWhiteColor:kLightGreyColor,
                  height: 24,
                  width: 24,
                ),
            ),
            BottomNavigationBarItem(
              tooltip: "Affirmation",
              label: "Affirmation",
              icon: Image.asset(
                "assets/icons/affirmation.png",
                color: controller.selectedIndex.value == 2?kWhiteColor:kLightGreyColor,
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              tooltip: "Profile",
              icon: Image.asset(
                "assets/icons/profile.png",
                color: controller.selectedIndex.value == 3?kWhiteColor:kLightGreyColor,
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      )),
    );
  }
}