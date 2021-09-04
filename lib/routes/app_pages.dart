import 'package:masspa_customer_app/pages/active_code/active_code_view.dart';
import 'package:masspa_customer_app/pages/forgot_password/forgot_password_view.dart';
import 'package:masspa_customer_app/pages/register/register_view.dart';
import 'package:masspa_customer_app/pages/reset_password/reset_password_view.dart';
import 'package:masspa_customer_app/pages/welcome/welcome_view.dart';
import 'package:masspa_customer_app/pages/login/login_view.dart';
import 'package:masspa_customer_app/pages/home/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static const HOME = Routes.HOME;
  static const LOGIN = Routes.LOGIN;
  static const WELCOME = Routes.WELCOME;
  static const REGISTER = Routes.REGISTER;
  static const FORGOT_PASSWORD = Routes.FORGOT_PASSWORD;
  static const ACTIVE_CODE = Routes.ACTIVE_CODE;
  static const RESET_PASSWORD = Routes.RESET_PASSWORD;
  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeView(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterView(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
    ),
    GetPage(
      name: Routes.ACTIVE_CODE,
      page: () => ActiveCodeView(),
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      page: () => ResetPasswordView(),
    )
  ];
}
