import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/navi/bottom_navi.dart';
import 'package:masspa_customer_app/navi/left_navi.dart';
import 'package:masspa_customer_app/navi/navi_controller.dart';
import 'package:masspa_customer_app/pages/home/home_widget.dart';
import 'package:masspa_customer_app/pages/home/settings_widget.dart';
import 'package:masspa_customer_app/pages/home/test_widget.dart';
import 'package:masspa_customer_app/pages/login/login_controller.dart';

import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final NaviController naviController = Get.put(NaviController());
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetList = <Widget>[
      homeWidget(),
      testWidget(),
      settingsWidget()
    ];
    return Scaffold(
      appBar: AppBar(title: Text('home')),
      drawer: leftNavi("User"),
      bottomNavigationBar: bottomNavi(naviController),
      body:
          Obx(() => _widgetList.elementAt(naviController.selectedIndex.value)),
    );
  }
}
