import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/pages/home/working/working_item_widget.dart';
import 'package:masspa_customer_app/utils/constants.dart';

class HomeWorkingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "working_list".tr,
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: textSizeNormal),
        ),
        SizedBox(
          height: 24,
        ),
        Column(
          children: List.generate(3, (index) => WorkingItemWidget()),
        )
      ],
    );
  }
}
