import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/welcome_bg.jpg",
                ),
                fit: BoxFit.fill)),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 340,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 120,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppPages.LOGIN);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          color: colorPrimary,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: Text(
                        "login".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: textSizeNormal, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppPages.REGISTER);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          color: colorPrimary,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: Text(
                        "create_an_account".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: textSizeNormal, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "continue_without".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: textSizeMedium,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "login".tr.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: textSizeMedium,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ]),
              ),
              Positioned(
                  top: -80,
                  child: ClipOval(
                    child: SvgPicture.asset(
                      "assets/images/logo.svg",
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
