
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:foodrecipe/view/favourite/favourite_view.dart';
import 'package:foodrecipe/view/home/home_view.dart';
import 'package:foodrecipe/view/profile/profile_view.dart';
import 'package:foodrecipe/view/search/search_view.dart';
import 'package:foodrecipe/view_models/controller/navigation_bar/navigation.dart';
import 'package:get/get.dart';

class NavigationView extends StatelessWidget {

   NavigationController navigationController = Get.put(NavigationController());

   NavigationView({super.key});

  final screen = const [
    HomeView(),
    FavouriteView(),
    SearchView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body:  Obx((){
        return IndexedStack(
          index: NavigationController.selectedIndex.value,
          children: screen,
        );
      }),
      bottomNavigationBar: Obx((){
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white38,
                showSelectedLabels: true,
                showUnselectedLabels: false,


                onTap: (index){
                  navigationController.changeIndex(index);
                },
                currentIndex: NavigationController.selectedIndex.value,

                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      backgroundColor: Colors.blueGrey,
                      label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border_outlined),
                      backgroundColor: Colors.blueGrey,
                      label: 'Favourite'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search)
                      ,backgroundColor: Colors.blueGrey,
                      label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      backgroundColor: Colors.blueGrey,
                      label: 'Profile'),
                ],
              ),
            ),
          ),
        );
    }),

    );
  }
}
