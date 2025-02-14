import 'package:affirmation_app/controllers/affirmation_screen_controller.dart';
import 'package:affirmation_app/controllers/home_screen_controller.dart';
import 'package:affirmation_app/controllers/intro_screen_controller.dart';
import 'package:affirmation_app/controllers/login_screen_controller.dart';
import 'package:affirmation_app/controllers/profile_screen_controller.dart';
import 'package:affirmation_app/controllers/progress_screen_controller.dart';
import 'package:affirmation_app/controllers/register_screen_controller.dart';
import 'package:affirmation_app/controllers/reminders_screen_controller.dart';
import 'package:get/get.dart';

import '../controllers/main_screen_controller.dart';
import '../controllers/user_details_input_screen_controller.dart';

class ScreensBindings extends Bindings {
  @override
  void dependencies() {
    
    Get.lazyPut(() => IntroScreenController());
    Get.lazyPut(() => MainScreenController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => ProgressScreenController());
    Get.lazyPut(() => AffirmationScreenController());
    Get.lazyPut(() => ProfileScreenController());
    Get.lazyPut(() => LoginScreenController());
    Get.lazyPut(() => RegisterScreenController());
    Get.lazyPut(() => UserDetailsInputScreenScreenController());
    Get.lazyPut(() => RemindersScreenController());
  }
}
