import 'dart:convert';

import 'package:get/get.dart';
import 'package:masspa_customer_app/generated/models/user_model.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/services/login_api.dart';
import 'package:masspa_customer_app/utils/widgets.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  login(
      {required String countryCode,
      required String username,
      required String password}) async {
    print("login in controller....");

    Get.dialog(loading());
    Future.delayed(const Duration(seconds: 30), () => "5");

    User? thisUser = await LoginAPI().login(username, password);

    // GetStorage().write("myUser", myUser_str);
    // if (Get.isDialogOpen) Get.back();
    Get.offNamed(Routes.HOME);
    //Get.toNamed(Routes.LOGIN);
  }
}
