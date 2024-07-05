import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileScreenController extends GetxController {

  RxString userName = RxString("John Harry");
  RxString userEmail = RxString("PAtrick@gmail.com");

  List<String> settingsList = ['Personal Details', 'General', 'Payment Method', 'Reminders', 'Widgets'];
  List<String> affirmationsList = ['Favorites','Past affirmations'];


  @override
  void onReady() {
    userEmail.value = FirebaseAuth.instance.currentUser?.email??"PAtrick@gmail.com";
    userName.value = FirebaseAuth.instance.currentUser?.displayName??"John Harry";
    super.onReady();
  }
  
}