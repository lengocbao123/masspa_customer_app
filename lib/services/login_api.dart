import 'package:dio/dio.dart';
import 'package:masspa_customer_app/generated/models/user_model.dart';
import 'package:masspa_customer_app/utils/constants.dart';
import 'package:masspa_customer_app/utils/log.dart';

class LoginAPI {
  Future<User?> login(String username, String password) async {
    final url =
        base_url + "test.json?username=" + username + "&pass=" + password;
    log(url);
    try {
      Response response = await Dio().get(url);
      log(response);
      final user = User.fromJson(response.data);
      return user;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
