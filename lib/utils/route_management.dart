import 'package:affirmation_app/views/screens/affirmation/affirmation_screen.dart';
import 'package:affirmation_app/views/screens/home/home_screen.dart';
import 'package:affirmation_app/views/screens/intro/intro_screen.dart';
import 'package:affirmation_app/views/screens/main_screen.dart';
import 'package:affirmation_app/views/screens/profile/profile_screen.dart';
import 'package:affirmation_app/views/screens/progress/progress_screen.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'screen_bindings.dart';


class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: kIntoScreenRoute,
        page: () => const IntroScreen(),
        binding: ScreensBindings(),
      ),
      GetPage(
        name: kMainScreenRoute,
        page: () => const MainScreen(),
        binding: ScreensBindings(),
      ),
      GetPage(
        name: kHomeScreenRoute,
        page: () => const HomeScreen(),
        binding: ScreensBindings(),
      ),
      GetPage(
        name: kProgressScreenRoute,
        page: () => const ProgressScreen(),
        binding: ScreensBindings(),
      ),
      GetPage(
        name: kAffirmationScreenRoute,
        page: () => const AffirmationScreen(),
        binding: ScreensBindings(),
      ),
      GetPage(
        name: kProfileScreenRoute,
        page: () => const ProfileScreen(),
        binding: ScreensBindings(),
      ),
    ];
  }
}
