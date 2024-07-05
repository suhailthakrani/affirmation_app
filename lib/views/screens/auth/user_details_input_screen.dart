import 'package:affirmation_app/utils/app_colors.dart';
import 'package:affirmation_app/utils/constants.dart';
import 'package:affirmation_app/views/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/user_details_input_screen_controller.dart';
import '../../widgets/general_text_field.dart';

class UserDetailsInputScreenScreen
    extends GetView<UserDetailsInputScreenScreenController> {
  const UserDetailsInputScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: kPrimaryDarkColor,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: const AssetImage("assets/images/bg.png"),
            opacity: 0.7,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            onError: (exception, stackTrace) => Container(),
          )),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Let's set your first money goal,",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0, right: 24, left: 2),
                    child: Text(
                      "Below are some question which can help you with that",
                      style: TextStyle(
                          fontSize: 12, wordSpacing: 1.5, letterSpacing: 0.6),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.06),
                GeneralTextField(
                  controller: controller.nameController,
                  hint: "Name",
                  prefix: const Icon(Icons.email),
                ),
                const SizedBox(height: 12),
                CustomDropdown(controller: controller.ocupationDDController),
                const SizedBox(height: 12),
                GeneralTextField(
                  controller: controller.currentIncomeController,
                  hint: "Current Income",
                ),
                const SizedBox(height: 12),
                CustomDropdown(
                    controller: controller.desiredOcupationDDController),
                const SizedBox(height: 12),
                GeneralTextField(
                  controller: controller.desiredIncomeController,
                  hint: "Desired Income",
                  prefix: const Icon(Icons.email),
                ),
                const SizedBox(height: 20),
                GeneralTextField(
                  controller: controller.debtAmountIncomeController,
                  hint: "Debt Amount",
                ),
                const SizedBox(height: 12),
                CustomDropdown(controller: controller.debtTypeDDController),
                const SizedBox(height: 12),
                GeneralTextField(
                  controller: controller.ageGroupController,
                  hint: "Savings Goals:",
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        width: Get.width,
        color: Colors.grey.shade900,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: kWhiteColor),
              fixedSize: Size(Get.width * 0.9, 55)),
          child: const Text("Sign Up"),
        ),
      ),
    );
  }
}
