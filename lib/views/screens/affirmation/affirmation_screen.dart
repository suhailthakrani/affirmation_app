import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';

import '../../../controllers/affirmation_screen_controller.dart';
import '../../../utils/app_colors.dart';

class AffirmationScreen extends GetView<AffirmationScreenController> {
  const AffirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withAlpha(80),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(CupertinoIcons.heart),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withAlpha(80),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/icons/download.png",
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withAlpha(80),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/icons/share.png",
                      height: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: Text(
                    "Learn as if you will live forever, live like you will die tomorrow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const Text("SCROLL UP"),
    );
  }
}
