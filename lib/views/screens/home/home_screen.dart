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
        title: Text("Home Screen"),
      ),
    );
  }
}