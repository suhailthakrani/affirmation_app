import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/affirmation_screen_controller.dart';
import '../../../utils/app_colors.dart';

class AffirmationScreen extends GetView<AffirmationScreenController> {
  const AffirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      appBar: AppBar(
        title: Text("Affirmation Screen"),
      ),
    );
  }
}