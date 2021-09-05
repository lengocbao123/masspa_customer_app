import 'package:flutter/material.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:get/get.dart';

class BasicInfoWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/avatar.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            )),
        SizedBox(
          width: 16,
        ),
        Flexible(
            flex: 1,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Edith Robinson",
                    style:
                        TextStyle(color: Colors.black, fontSize: textSizeLarge),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Icon(Icons.logout, color: textColorSecondary),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed(AppPages.LOGIN);
                        },
                        child: Text(
                          "signout".tr,
                          style: TextStyle(
                              color: textColorSecondary,
                              fontSize: textSizeMedium),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
