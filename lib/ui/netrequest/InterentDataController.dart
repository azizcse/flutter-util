import 'dart:convert';

import 'package:execciseflutter/data/user.dart';
import 'package:execciseflutter/ui/netrequest/UserDataProvider.dart';
import 'package:get/get.dart';

class InternetDataController extends GetxController{
  UserDataProvider? _userDataProvider = null;
  @override
  void onInit() {
    _userDataProvider = UserDataProvider();
    super.onInit();
  }

  void getUserData() async{
    Response result = await _userDataProvider!.getUsers("users");

    if(result.isOk){
      var results = User.fromJson(json.decode(result.body));
    }else{

    }
  }
}