import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool showPassword = RxBool(false);
  
}