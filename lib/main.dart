import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/app_colors.dart';
import 'utils/constants.dart';
import 'utils/route_management.dart';
import 'utils/screen_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Affirmation App",
      initialRoute: kUserDetailsInputScreenRoute,
      initialBinding: ScreensBindings(),
      getPages: RouteManagement.getPages(),
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          colorScheme: const ColorScheme.dark(
            primary: Colors.white,
            onPrimary: kPrimaryDarkColor,
            surface: kPrimaryDarkColor,
            onSecondary: kWhiteColor,
            onSurface: kWhiteColor,
          ),
        ),
      debugShowCheckedModeBanner: false,
    );
  }
}