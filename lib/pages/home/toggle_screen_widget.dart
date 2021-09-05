import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeToggleScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 1,
            child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/icons/alarm_clock.svg',
                          height: 48,
                          width: 48,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "tracking_time".tr,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ))),
        SizedBox(
          width: 24,
        ),
        Flexible(
            flex: 1,
            child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/icons/timetable.svg',
                          height: 48,
                          width: 48,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "view_booking".tr,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )))
      ],
    );
  }
}
