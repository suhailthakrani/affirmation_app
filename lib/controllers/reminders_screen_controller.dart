import 'package:get/get.dart';

class RemindersScreenController extends GetxController {
  RxDouble progressValue = RxDouble(10);

  void setProgressValue(lowerValue) {
    progressValue.value = lowerValue;
    notifyChildrens();
  }
  
}