import 'package:flutter/material.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:get/get.dart';

class WorkingItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Card(
        elevation: 4.0,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "#28974609087",
                    style: TextStyle(
                        fontSize: textSizeMedium, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "9:00 AM",
                    style: TextStyle(
                      fontSize: textSizeMedium,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              SizedBox(
                height: 15,
              ),
              Column(
                children: List.generate(2, (index) => _buildItem()),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Text(
                    "finish".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              flex: 4,
              child: Text(
                "Massage thư giãn toàn thân với bùn khoáng",
                style: TextStyle(
                  fontSize: textSizeMedium,
                ),
              )),
          Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "x1",
                    style: TextStyle(
                      fontSize: textSizeMedium,
                    ),
                  ),
                  Text(
                    "12 phút",
                    style: TextStyle(
                      color: textColorSecondary,
                      fontSize: textSizeMedium,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
