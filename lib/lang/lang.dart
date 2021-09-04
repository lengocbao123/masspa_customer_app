import 'package:masspa_customer_app/lang/vi.dart';
import 'package:get/get.dart';
import 'package:masspa_customer_app/lang/en.dart';

class Lang extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'vi_VN': vi(),
        'en_US': english(),
      };
}
