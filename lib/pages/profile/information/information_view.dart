import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:masspa_customer_app/utils/constants.dart';

import 'information_form_widget.dart';

class ProfileInformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textColorSecondary,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        titleSpacing: 0,
        actions: [],
        title: Text(
          "information".tr,
          style: TextStyle(
              fontSize: textSizeMedium,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 125,
                decoration: BoxDecoration(color: textColorSecondary),
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  InformationFormWidget(),
                  Positioned(
                      top: -100,
                      child: SizedBox(
                        height: 156,
                        child: AspectRatio(
                          aspectRatio: 3 / 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/avatar.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
