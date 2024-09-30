

import 'package:foodrecipe/res/routes/routes_name.dart';
import 'package:foodrecipe/view/Navigatien/navigation_view.dart';
import 'package:foodrecipe/view/home/detail_view.dart';
import 'package:foodrecipe/view/home/home_view.dart';
import 'package:foodrecipe/view/home/meal_view.dart';

import 'package:foodrecipe/view/login/login_view.dart';
import 'package:foodrecipe/view/splash/splash_screen.dart';
import 'package:get/get.dart';


class AppRoutes {



  static appRoutes ()=> [
  GetPage(name: RoutesName.splashScreen,
  page: ()=> SplashScreen(),
  transitionDuration: Duration(microseconds: 250),
  transition: Transition.leftToRightWithFade,
  ),

    GetPage(name: RoutesName.loginView,
        page: ()=> LoginView(),
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRightWithFade
    ),

    GetPage(name: RoutesName.homeView,
        page: ()=> HomeView(),
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRightWithFade
    ),

    GetPage(name: RoutesName.navigationView,
        page: ()=> NavigationView(),
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRightWithFade
    ),

    GetPage(name: RoutesName.detailView,
        page: ()=> DetailView()=Get.arguments,
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRightWithFade
    ),

    GetPage(name: RoutesName.mealView,
        page: ()=> MealView()=Get.arguments,
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRightWithFade
    ),
  ];
}

