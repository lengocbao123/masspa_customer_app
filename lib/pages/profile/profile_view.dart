import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'basic_info_widget.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
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
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/images/icons/settings.svg",
              width: 28,
              height: 28,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        title: Text(
          "profile".tr,
          style: TextStyle(
              fontSize: textSizeMedium,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BasicInfoWiget(),
              SizedBox(
                height: 35,
              ),
              Text(
                "account_detail".tr,
                style: TextStyle(
                    fontSize: textSizeMedium,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppPages.PROFILE_INFORMATION);
                        },
                        child: AspectRatio(
                          aspectRatio: 3 / 2,
                          child: Card(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/icons/account.svg",
                                    height: 32,
                                    width: 32,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "information".tr,
                                    style: TextStyle(
                                        fontSize: textSizeMedium,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                      flex: 3,
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 3 / 2,
                          child: Card(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/icons/time-sheet.svg",
                                    height: 32,
                                    width: 32,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "working_time".tr,
                                    style: TextStyle(
                                        fontSize: textSizeMedium,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Flexible(
                      flex: 3,
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 3 / 2,
                          child: Card(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/icons/salary.svg",
                                    height: 32,
                                    width: 32,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "salary".tr,
                                    style: TextStyle(
                                        fontSize: textSizeMedium,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                      flex: 3,
                      child: InkWell(
                        onTap: () {},
                        child: AspectRatio(
                          aspectRatio: 3 / 2,
                          child: Card(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/icons/password.svg",
                                    height: 32,
                                    width: 32,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "change_password".tr,
                                    style: TextStyle(
                                        fontSize: textSizeMedium,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
