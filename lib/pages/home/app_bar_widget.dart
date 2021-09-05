import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:get/get.dart';

class HomeAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(AppPages.PROFILE);
            },
            child: ClipOval(
              child: Image.asset(
                "assets/images/avatar.jpg",
                fit: BoxFit.fill,
                width: 48,
                height: 48,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Linda Boyld",
            style: TextStyle(
                color: Colors.black,
                fontSize: textSizeLarge,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 20,
      actions: [
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            "assets/images/icons/user_switch.svg",
            width: 28,
            height: 28,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
