import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/navi/left_navi.dart';
import 'package:masspa_customer_app/pages/home/toggle_screen_widget.dart';
import 'package:masspa_customer_app/pages/home/working/working_list_widget.dart';
import 'app_bar_widget.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: HomeAppBarWidget()),
      drawer: leftNavi("User"),
      body: SingleChildScrollView(
        primary: false,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeToggleScreenWidget(),
              SizedBox(
                height: 48,
              ),
              HomeWorkingList()
            ],
          ),
        ),
      ),
    );
  }
}
