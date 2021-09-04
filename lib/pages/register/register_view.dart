import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/components/select_country_code.dart';
import 'package:masspa_customer_app/routes/app_pages.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:masspa_customer_app/utils/form_validation.dart';

class RegisterView extends StatelessWidget {
  TextEditingController countryCodeController =
      TextEditingController(text: "+84");
  TextEditingController usernameController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController confirmPasswordController =
      TextEditingController(text: "");
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void register() async {
    if (!formkey.currentState!.validate()) {
      print('Invalid');
      return;
    }
    String username = usernameController.text;
    String password = passwordController.text;
    String countryCode = countryCodeController.text;
    print('$username $password $countryCode');
    // loginController.login(
    //     countryCode: countryCode, username: username, password: password);
  }

  InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      hintText: hintText,
    );
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
                      height: 520,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 252, 252, 0.8),
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        Form(
                          key: formkey,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    flex: 1,
                                    child: SelectCountryCode(
                                      controller: countryCodeController,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Flexible(
                                    flex: 4,
                                    child: TextFormField(
                                        cursorColor: colorPrimary,
                                        controller: usernameController,
                                        decoration:
                                            inputDecoration("username".tr),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: FormValidation.required),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                  cursorColor: colorPrimary,
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: inputDecoration("password".tr),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: FormValidation.password),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                  cursorColor: colorPrimary,
                                  // controller: confirmPasswordController,
                                  obscureText: true,
                                  decoration:
                                      inputDecoration("confirm_password".tr),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (val) => FormValidation
                                      .confirmPassword
                                      .validateMatch(
                                          val!, passwordController.text)),
                              SizedBox(
                                height: 24,
                              ),
                              InkWell(
                                onTap: register,
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                      color: colorPrimary,
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  child: Text(
                                    "signup".tr,
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
                            ],
                          ),
                        ),
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
}
