import 'package:affirmation_app/models/user_model.dart';
import 'package:affirmation_app/services/users_services.dart';
import 'package:affirmation_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool showPassword = RxBool(false);

  Future<void> login(context) async {
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      String result = await UserServices().loginUser(emailController.text, passwordController.text);
      if(result == "Success") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Successfully!")));
        Get.toNamed(kMainScreenRoute);
      }
    }
  }



  
}