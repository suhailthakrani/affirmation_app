import 'package:affirmation_app/models/user_model.dart';
import 'package:affirmation_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../services/users_services.dart';

class RegisterScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool showPassword = RxBool(false);

  Future<void> register(context) async {
    UserModel userModel = UserModel.empty();
    userModel.email = emailController.text;
    userModel.name = nameController.text;
    userModel.password = passwordController.text;
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      String result = await UserServices().registerUser(model:userModel);
      if(result == "Success") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registered Successfully!")));
        Get.toNamed(kUserDetailsInputScreenRoute);
      }
    }
  }
  
}