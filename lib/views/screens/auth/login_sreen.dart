import 'package:affirmation_app/utils/app_colors.dart';
import 'package:affirmation_app/utils/constants.dart';
import 'package:affirmation_app/views/widgets/general_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_screen_controller.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

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
                const SizedBox(height: 40),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top:8.0, right: 24, left: 2),
                    child: Text(
                      "Glad to meet you again!, please login to use the app",
                      style: TextStyle(
                        fontSize: 12,
                        wordSpacing: 1.5,
                        letterSpacing: 0.6
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.08),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        await controller.login(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 8.0, right: 4),
                        child: Text("Forgot Password?"),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () async {
                    await controller.login(context);
                  },
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.9, 48)),
                  child: const Text("Sign In"),
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
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.7, 45)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/afacbook.PNG", height: 30,width: 30,),
                      const SizedBox(width: 12),
                      const Text("Join with Facebook")
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.7, 45)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/atwitter.PNG", height: 30,width: 30,),
                      const SizedBox(width: 12),
                      const Text("Join with Twitter")
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: kWhiteColor),
                      fixedSize: Size(Get.width * 0.7, 45)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/agoogle.PNG", height: 30,width: 30,),
                      const SizedBox(width: 12),
                      const Text("Join with Google")
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    InkWell(
                      onTap: () {
                        Get.toNamed(kRegisterScreenRoute);
                      },
                      child: const Text(
                        "Join Now",
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
