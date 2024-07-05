import 'dart:developer';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import "package:timezone/timezone.dart" as tz;

@pragma('vm:entry-point')
void onDidReceiveBackgroundNotificationResponse(NotificationResponse notificationResponse) {
  handleNotificationResponse(notificationResponse);
}

void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) {
  handleNotificationResponse(notificationResponse);
}

void handleNotificationResponse(NotificationResponse notificationResponse) {
  print('----------------PAYLOAD: ${notificationResponse.payload}');
  if (notificationResponse.payload != null) {
    // if(notificationResponse.payload == kDoseDetailScreenRoute){
    //   Get.toNamed(kDoseDetailScreenRoute);
    // }else{
    //   Get.toNamed(kHomeScreenRoute);
    // }
  }
}
class LocalNotificationService extends GetxService {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings androidInitializationSettings = const AndroidInitializationSettings("@mipmap/ic_launcher");
  var iosInitializationSettings = const DarwinInitializationSettings();

  void initializeNotification() async {
    final InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      onDidReceiveBackgroundNotificationResponse: onDidReceiveBackgroundNotificationResponse
    );
  }

  void showNotification(int id, String body, {required String title, bool doPersist = true, String payload = ''}) async {
    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      "com.example.affirmation_app",
      "channelName",
      importance: Importance.max,
      playSound: true,
      priority: Priority.high,
      onlyAlertOnce: true,
      ongoing: doPersist,
      enableVibration: true,
      enableLights: true,
      // sound: const RawResourceAndroidNotificationSound('extreme_alarm_clock')
    );
    DarwinNotificationDetails iosDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
    );
    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails, iOS: iosDetails);

    await flutterLocalNotificationsPlugin.show(id, title, body, notificationDetails, payload: payload);
  }

  Future<void> showScheduledNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledTime,
    String payload = '',
  }) async {
    log('------------Scheduled Time: $scheduledTime');
    log('------------Scheduled ID: $id');
    // CommonCode().showToast(message: '---------Scheduled at:: $scheduledTime');
    final now = DateTime.now();
    if (scheduledTime.isBefore(now)) {
      log('Scheduled time is in the past. Ignoring...');
      return;
    }
    try {
      await flutterLocalNotificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(scheduledTime, tz.local),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            "com.example.affirmation_app",
            "channelName",
            importance: Importance.max,
            playSound: true,
            priority: Priority.high,
            onlyAlertOnce: true,
            ongoing: true,
            enableVibration: true,
            enableLights: true,
            // sound: RawResourceAndroidNotificationSound('extreme_alarm_clock')/*UriAndroidNotificationSound("assets/tunes/extreme_alarm_clock.mp3")*/,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.dateAndTime,
        payload: payload,
      );
      log('Scheduled successfully......');
    } catch (error) {
      log('Error scheduling notification: $error');
    }
  }

  Future<void> cancelNotification(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

}