import 'package:flutter/material.dart';
import 'package:masspa_customer_app/utils/colors.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:masspa_customer_app/utils/form_validation.dart';

class InformationFormWidget extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: edit_text_background, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: edit_text_background, width: 1.0),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: edit_text_background, width: 1.0),
        ),
        labelText: hintText,
        labelStyle: TextStyle(color: Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100, left: 24, right: 24),
      decoration: BoxDecoration(color: Colors.white),
      child: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
                cursorColor: edit_text_background,
                decoration: inputDecoration("fist_name".tr),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormValidation.required),
            SizedBox(
              height: 16,
            ),
            TextFormField(
                cursorColor: edit_text_background,
                decoration: inputDecoration("last_name".tr),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormValidation.required),
            SizedBox(
              height: 16,
            ),
            TextFormField(
                cursorColor: edit_text_background,
                decoration: inputDecoration("gender".tr),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormValidation.required),
            SizedBox(
              height: 16,
            ),
            TextFormField(
                cursorColor: edit_text_background,
                decoration: inputDecoration("phone_number".tr),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormValidation.required),
            SizedBox(
              height: 16,
            ),
            TextFormField(
                cursorColor: edit_text_background,
                decoration: inputDecoration("email".tr),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormValidation.required),
            SizedBox(
              height: 16,
            ),
            TextFormField(
                cursorColor: edit_text_background,
                decoration: inputDecoration("address".tr),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormValidation.required),
            SizedBox(
              height: 48,
            ),
            InkWell(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  "save".tr,
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: textSizeNormal, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
