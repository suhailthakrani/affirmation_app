import 'package:affirmation_app/controllers/home_screen_controller.dart';
import 'package:affirmation_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryDarkColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white38,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "John Harry",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 48,
            width: 48,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.grey.shade900),
            child: const Icon(Icons.notifications_none, color: Colors.white, size: 36,),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: Divider(color: Colors.grey.shade700),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Progress",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white38,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: Get.height * 0.35,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode :TileMode.decal,
                  colors: [
                    kPrimaryDarkColor,
                    kPrimaryColor,
                  ]
                )
              ),
              child: const Column(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.alarm_add,
                      size: 100,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Purus sit facilisis adipiscing aliquam dictum",
                    style: TextStyle(color: Colors.white60),
                  )
                ],
              ),
            ),
            const Text(
              "Achievments",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
