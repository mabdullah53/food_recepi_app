
import 'dart:async';
import 'package:foodrecipe/res/routes/routes_name.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/user_preference/user_preference.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();
  void isLogin(){
    userPreference.getUser().then((value){
      print(value.token);
      print(value.isLogin);

      if(value.isLogin == false || value.isLogin.toString() == 'null'){

        Timer(Duration(seconds: 3),
                ()=> Get.toNamed(RoutesName.loginView));

      } else {
        Timer(Duration(seconds: 3),
                ()=> Get.toNamed(RoutesName.navigationView));
      }
    });


  }
}