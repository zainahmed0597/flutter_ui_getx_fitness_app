import 'package:flutter_ui_getx_fitness_app/pages/register_view.dart';
import 'package:flutter_ui_getx_fitness_app/pages/welcome_view.dart';
import 'package:get/get.dart';

import '../pages/forget_password_view.dart';
import '../pages/login_view.dart';
import '../pages/about_view.dart';

class AppPages {
  static const initialRoute = '/';
  static const home = '/home';
  static const about = '/about_you';
  static const login = '/login';
  static const forgetPassword = '/forget_password';
  static const register = '/register';

  static final List<GetPage> routes = [
    GetPage(
      name: initialRoute,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: about,
      page: () => const AboutView(),
    ),
    GetPage(
      name: login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: forgetPassword,
      page: () => const ForgetPasswordView(),
    ),
    GetPage(
      name: register,
      page: () =>  RegisterView(),
    ),
  ];

// static final unknownRoute = GetPage(
//   name: '/not-found',
//   page: () => NotFoundScreen(),
// );
}
