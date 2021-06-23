import 'package:execciseflutter/util/Constant.dart';
import 'package:get/get.dart';

class UserDataProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = BASE_URL;
  }

  Future<Response> getUsers(String apiStr) => get(apiStr);
}
