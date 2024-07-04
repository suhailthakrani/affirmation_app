import 'package:affirmation_app/views/screens/affirmation/affirmation_screen.dart';
import 'package:affirmation_app/views/screens/home/home_screen.dart';
import 'package:affirmation_app/views/screens/profile/profile_screen.dart';
import 'package:affirmation_app/views/screens/progress/progress_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class MainScreenController extends GetxController {

  RxInt selectedIndex = RxInt(0);


  final List<Widget> views = [
    HomeScreen(),
    ProgressScreen(),
    AffirmationScreen(),
    ProfileScreen(),
  ];


  void onTabChanged(int index) {
    selectedIndex.value = index;
    notifyChildrens();
  }

  
}