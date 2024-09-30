
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodrecipe/res/routes/routes_name.dart';
import 'package:foodrecipe/view/home/home_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var currentPage = 0.obs;
  final PageController pageController = PageController();

  void nextPage(){
    if(currentPage.value < 2){
       currentPage.value++;
       pageController.nextPage(
           duration: Duration(milliseconds: 400),
           curve: Curves.easeIn,);
    } else {
      Get.toNamed(RoutesName.loginView);
    //  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
    }
  }
}

