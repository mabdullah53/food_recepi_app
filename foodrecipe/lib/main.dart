import 'package:flutter/material.dart';
import 'package:foodrecipe/res/getx_loclization/languages.dart';
import 'package:foodrecipe/res/routes/routes.dart';
import 'package:foodrecipe/view/splash/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        translations: Languages(),
        locale: const Locale('en' , 'Us'),
        fallbackLocale: Locale('en', 'Us'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: const SplashScreen(), //first m name ho ga
        getPages: AppRoutes.appRoutes()
    );
  }
}


