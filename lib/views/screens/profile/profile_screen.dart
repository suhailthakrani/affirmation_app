import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_screen_controller.dart';
import '../../../utils/app_colors.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
    );
  }
}