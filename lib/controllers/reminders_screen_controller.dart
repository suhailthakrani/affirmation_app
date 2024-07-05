import 'dart:math';

import 'package:affirmation_app/services/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class RemindersScreenController extends GetxController {
  RxDouble progressValue = RxDouble(10);

  Rx<TimeOfDay> startTime = Rx(TimeOfDay.now());
  Rx<DateTime> startDate = Rx(DateTime.now());
  Rx<TimeOfDay> endTime = Rx(TimeOfDay.now());
  Rx<DateTime> endDate = Rx(DateTime.now());

  void setProgressValue(lowerValue) {
    progressValue.value = lowerValue;
    notifyChildrens();
  }

  Future<void> selectStartTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != startTime.value) {
        startTime.value = picked;
        startDate.value = convertTimeOfDayToDateTime(picked);
    }
  }

  Future<void> selectEndTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != endTime.value) {
        endTime.value = picked;
        endDate.value = convertTimeOfDayToDateTime(picked);
    }
  }

  DateTime convertTimeOfDayToDateTime(TimeOfDay time) {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, time.hour, time.minute);
  }


  Future<void> scheduledNotification() async {
    await LocalNotificationService().showScheduledNotification(
      id: Random().nextInt(200000), 
      title: "Heloooooooooo!", 
      body: "Reminder Reminderrrrrrrrrrr", 
      scheduledTime: startDate.value,
    );
  }
  
}