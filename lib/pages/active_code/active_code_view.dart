import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class ActiveCodeView extends StatelessWidget {
  TextEditingController pinCodeController = TextEditingController(text: "");
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void sendPinCode() async {
    String pinCode = pinCodeController.text;
    print('$pinCode');
    if (pinCode.isEmpty) {
      print('Invalid');
      return;
    }
    Get.toNamed(AppPages.RESET_PASSWORD);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/login_bg.jpg",
                      ),
                      fit: BoxFit.fill))),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 380,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 252, 252, 0.8),
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          "enter_verify_code".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: textSizeMedium, color: Colors.black),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        PinCodeTextField(
                          autofocus: true,
                          controller: pinCodeController,
                          hideCharacter: true,
                          highlight: false,
                          defaultBorderColor: Colors.white,
                          hasTextBorderColor: colorPrimary,
                          maxLength: 6,
                          maskCharacter: '•',
                          pinBoxWidth: 40,
                          pinBoxHeight: 40,
                          wrapAlignment: WrapAlignment.spaceBetween,
                          pinBoxDecoration: pinBoxDecoration,
                          pinTextStyle: TextStyle(fontSize: 18.0),
                          pinTextAnimatedSwitcherTransition:
                              ProvidedPinBoxTextAnimation.scalingTransition,
                          pinTextAnimatedSwitcherDuration:
                              Duration(milliseconds: 300),
                          highlightAnimationBeginColor: Colors.black,
                          highlightAnimationEndColor: Colors.white,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        InkWell(
                          onTap: sendPinCode,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: colorPrimary,
                                borderRadius: BorderRadius.circular(32.0)),
                            child: Text(
                              "send".tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: textSizeNormal,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppPages.LOGIN);
                          },
                          child: Text(
                            "back_to_login".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: textSizeMedium,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ]),
                    ),
                    Positioned(
                        top: -80,
                        child: ClipOval(
                          child: SvgPicture.asset(
                            "assets/images/primary_logo.svg",
                            fit: BoxFit.fill,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  static PinBoxDecoration pinBoxDecoration = (
    Color borderColor,
    Color pinBoxColor, {
    double borderWidth = 2.0,
    double radius = 4.0,
  }) {
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(4.0));
  };
}
