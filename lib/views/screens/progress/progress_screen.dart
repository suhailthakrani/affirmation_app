import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/progress_screen_controller.dart';

class ProgressScreen extends GetView<ProgressScreenController> {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Screen"),
      ),
    );
  }
}