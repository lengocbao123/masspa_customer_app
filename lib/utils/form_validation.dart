import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class FormValidation {
  static MultiValidator password = MultiValidator([
    required,
    MinLengthValidator(6, errorText: 'long_validation'.tr),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'special_character_validation'.tr)
  ]);
  static RequiredValidator required =
      RequiredValidator(errorText: 'required_validation'.tr);

  static MatchValidator confirmPassword =
      MatchValidator(errorText: "confirm_password_do_not_match".tr);
}
