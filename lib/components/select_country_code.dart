import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SelectCountryCode extends StatelessWidget {
  TextEditingController controller;

  SelectCountryCode({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CountryCodePicker(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                onChanged: (country) {
                  controller.text = country.dialCode!;
                },
                initialSelection: 'VN',
                favorite: ['+84', 'VN'],
                showFlagDialog: true,
                showFlag: false,
                onInit: (code) {}),
          ],
        ));
    ;
  }
}
