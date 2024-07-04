import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/intro_screen_controller.dart';

class IntroScreen extends GetView<IntroScreenController> {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Screen"),
      ),
    );
  }
}