import 'package:affirmation_app/utils/app_colors.dart';
import 'package:affirmation_app/utils/constants.dart';
import 'package:affirmation_app/views/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/register_screen_controller.dart';
import '../../widgets/general_text_field.dart';

class RegisterScreen extends GetView<RegisterScreenController> {
  const RegisterScreen({super.key});

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
                    "Create an account,",
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
                      "Please type full information bellow and we can create your account",
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
                const SizedBox(height: 20),
                GeneralTextField(
                  controller: controller.emailController,
                  hint: "Email",
                  prefix: const Icon(Icons.email),
                ),
                const SizedBox(height: 20),
                Obx(
                  () => GeneralTextField(
                    obscureText: controller.showPassword.value,
                    controller: controller.passwordController,
                    hint: "Password",
                    postfix: InkWell(
                      onTap: () {
                        controller.showPassword.value =
                            !controller.showPassword.value;
                      },
                      child: controller.showPassword.value
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    prefix: const Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 16),
                const Text.rich(
                  TextSpan(
                      text: "By signing up you agree to our ",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 11.5),
                      children: [
                        TextSpan(
                          text: "Term of use and privacy ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 11.5,
                          ),
                        ),
                        TextSpan(text: "\nnotice")
                      ]),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(kUserDetailsInputScreenRoute);
                  },
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.9, 48)),
                  child: const Text("Continue"),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 12,
                        endIndent: 20,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const Text("or"),
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.7, 45)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("G"),
                      SizedBox(width: 12),
                      Text("Join with Google")
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.7, 45)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("G"),
                      SizedBox(width: 12),
                      Text("Join with Twitter")
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.7, 45)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("G"),
                      SizedBox(width: 12),
                      Text("Join with Facebook")
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account? "),
                    InkWell(
                      onTap: () {
                        Get.toNamed(kLoginScreenRoute);
                      },
                      child: const Text(
                        "Sign In ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
