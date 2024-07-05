import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AffirmationScreenController extends GetxController {
  RxDouble progressValue = RxDouble(10);

  void setProgressValue(lowerValue) {
    progressValue.value = lowerValue;
    notifyChildrens();
  }
  
}