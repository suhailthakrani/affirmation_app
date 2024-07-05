import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/progress_screen_controller.dart';
import '../../../utils/app_colors.dart';

class ProgressScreen extends GetView<ProgressScreenController> {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Progress Screen"),
      ),
    );
  }
}