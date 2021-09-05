import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:masspa_customer_app/lang/lang.dart';
import 'package:masspa_customer_app/pages/login/login_controller.dart';
import 'package:masspa_customer_app/utils/log.dart';

import 'generated/models/user_model.dart';
import 'routes/app_pages.dart';

void main() async {
  await GetStorage.init();

  LoginController loginController = Get.put(LoginController());

  // String initialRoute = AppPages.WELCOME;
  // if (loginController.myUser_val.value == "") {
  //   initialRoute = AppPages.LOGIN;
  // } else {
  //   User loggedInUser =
  //       User.fromJson(jsonDecode(loginController.myUser_val.value));
  //   loginController.myUser.value = loggedInUser;
  // }

  final Locale deviceLocale = Get.deviceLocale!;
  log("---- device languageCode:" + deviceLocale.languageCode);
  log("---- device countryCode:" + deviceLocale.countryCode!);
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.HOME,
      theme: ThemeData(fontFamily: 'Roboto'),
      translations: Lang(),
      locale: Locale('vi', 'VN'),
      fallbackLocale: Locale('vi', 'VN'),
      getPages: AppPages.routes,
    ),
  );
}
