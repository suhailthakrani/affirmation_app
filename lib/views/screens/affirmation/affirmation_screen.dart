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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset("assets/images/img1.png"),
              ),
              const Text(
                "Set Daily Affirmation Reminders.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor.withAlpha(150),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Start Time"),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text("09:00 AM"),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2,
                      color: kPrimaryColor,
                      indent: 2,
                      endIndent: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("End Time"),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text("10:00 AM"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withAlpha(150),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "How Many",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white38,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0"),
                          Text("50"),
                        ],
                      ),
                    ),
                    FlutterSlider(
                      handlerHeight: 12,
                      values: [controller.progressValue.value],
                      max: 50,
                      min: 0,
                      onDragging: (handlerIndex, lowerValue, upperValue) {
                        controller.setProgressValue(lowerValue);
                      },
                      trackBar: FlutterSliderTrackBar(
                        activeTrackBarHeight: 5,
                        activeTrackBar: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        inactiveTrackBar: BoxDecoration(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      handler: FlutterSliderHandler(
                        decoration: const BoxDecoration(),
                        child: Material(
                          type: MaterialType.circle,
                          color: Colors.white,
                          elevation: 3,
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      rightHandler: FlutterSliderHandler(
                        decoration: const BoxDecoration(),
                        child: Material(
                          type: MaterialType.circle,
                          color: Colors.white,
                          elevation: 3,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withAlpha(150),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Text(
                        "Sound",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: Container(
                              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
                              decoration: BoxDecoration(
                                color: kPrimaryDarkColor.withAlpha(80),
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white54)
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 16,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal:8.0),
                            child: Text(
                              "Calm",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Center(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(right: 4, top: 8, bottom: 8, left: 8),
                              decoration: BoxDecoration(
                                color: kPrimaryDarkColor.withAlpha(80),
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white54)
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
