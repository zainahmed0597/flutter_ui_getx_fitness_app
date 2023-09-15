import 'package:get/get.dart';

import '../pages/started/about_view.dart';
import '../pages/started/welcome_view.dart';

class AppPages {
  static const initialRoute = '/';
  static const home = '/home';
  static const about = '/home';
  static const settings = '/settings';

  static final List<GetPage> routes = [
    GetPage(
      name: initialRoute,
      page: () => const AboutView(),
    ),
    // GetPage(
    //   name: about,
    //   page: () => const AboutView(),
    // ),
    // GetPage(
    //   name: home,
    //   page: () => HomeScreen(),
    // ),
    // GetPage(
    //   name: settings,
    //   page: () => SettingsScreen(),
    // ),
  ];

  // static final unknownRoute = GetPage(
  //   name: '/not-found',
  //   page: () => NotFoundScreen(),
  // );
}
