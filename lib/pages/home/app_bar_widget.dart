import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masspa_customer_app/utils/constants.dart';

class HomeAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          ClipOval(
            child: SvgPicture.asset(
              "assets/images/primary_logo.svg",
              fit: BoxFit.fill,
              width: 48,
              height: 48,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Linda Boyld",
            style: TextStyle(color: Colors.black, fontSize: textSizeMedium),
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
