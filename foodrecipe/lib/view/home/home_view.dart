import 'package:flutter/material.dart';
import 'package:foodrecipe/data/response/status.dart';
import 'package:foodrecipe/res/assets/images.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:foodrecipe/res/compunents/general_exception.dart';
import 'package:foodrecipe/res/compunents/internet_exception.dart';
import 'package:foodrecipe/res/routes/routes_name.dart';
import 'package:foodrecipe/view/home/detail_view.dart';
import 'package:foodrecipe/view/home/meal_view.dart';
import 'package:foodrecipe/view_models/controller/favourite/favourite_item.dart';
import 'package:foodrecipe/view_models/controller/home_categoryy/home_category_model.dart';
import 'package:foodrecipe/view_models/controller/home_meals/home_meals.dart';
import 'package:foodrecipe/view_models/controller/navigation_bar/navigation.dart';
import 'package:foodrecipe/view_models/controller/user_preference/user_preference.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  FavouriteController controller =Get.put(FavouriteController());

  RxList favouriteList = [].obs;


  final homeController = Get.put(HomeController());
  final homeControllerr = Get.put(HomeControllermeals());




  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.categorylistApi();
    homeControllerr.mealsListApi();
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;
    
    return  Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SingleChildScrollView(
        child:  Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80,left: 15),
                      child: Text('Hi Arnold',style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 80,left: 170),
                      child: Container(
                        height: height*0.07,
                        width: width*0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.blueGrey,
                          image: DecorationImage(
                            image: NetworkImage(ImageAssets.homeViewProfile,
                            ),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                    ),
                   ],
                ),
        
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 0),
                      child: Text('Ready to cook for dinner?',style: TextStyle(
                        color: Colors.amber
                      ),
                      ),
                    ),
                  ],
                ),
        
                Padding(
                  padding: const EdgeInsets.only(left: 47,right: 25,top: 20),
                  child: Container(
                    height: height*0.20,
                    width: width*0.75,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: AppColor.whiteColor),
                      image: DecorationImage(
                        opacity: 0.7,
                        image: NetworkImage(ImageAssets.homeMenuBar),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover
                      )
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10,top: 15),
                              child: Text('Menu For Dinner',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),),
                            ),
                          ],
                        ),
        
                      Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Text('Chicken Baked',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w600,
                              fontSize: 29,
                          ),),
                        ),
                      ],
                    ),
        
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14,left: 15),
                              child: Container(
                                height: height*0.04,
                                width: width*0.08,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.whiteColor),
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.amber.shade700 ,
                                ),
                              ),
                            ),
        
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 13),
                              child: Text('30 min',style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 20
                              ),),
                            ),
        
                            Padding(
                              padding: const EdgeInsets.only(top: 14,left: 35),
                              child: Container(
                                height: height*0.04,
                                width: width*0.08,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.whiteColor),
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Icon(
                                  Icons.local_fire_department_outlined,
                                  color: Colors.amber.shade700 ,
                                ),
                              ),
                            ),
        
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 13),
                              child: Text('hot',style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20
                              ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        
        
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 17),
                      child: Text('Meal Category',style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: AppColor.whiteColor,
                      ),),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 160),
                      child: Text('See All',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColor.whiteColor.withOpacity(0.43),
                      ),),
                    ),
                  ],
                ),
        
                Obx((){
                   switch(homeController.rxRequestStatus.value) {
                     case Status.LOADING:
                       return Center(child: CircularProgressIndicator());
        
                     case Status.ERROR:
                       if (homeController.error.value == 'No internet') {
                         return InternetExceptionWidget(onPress: () {
                           homeController.refreshApi();
                         });
                         homeController.categorylistApi();
                       } else {
                         return generalExceptionWidget(onPress: () {
                           homeController.refreshApi();
                         },);
                       }
                     case Status.COMPLETED:
                       return
                         SizedBox(
                           height: height * 0.10,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: ListView.builder(
                                 shrinkWrap: true,
                                 scrollDirection: Axis.horizontal,
                                 itemCount: homeController.categoryList.value.categories?.length,
                                 itemBuilder: (context, index) {
                                   return GestureDetector(
                                     onTap: (){

                                       Get.toNamed(RoutesName.detailView,
                                       arguments: DetailView(imgurl: homeController.categoryList.value.categories!
                                       [index].strCategoryThumb.toString(),
                                       title: homeController.categoryList.value.categories!
                                         [index].strCategory.toString(),
                                       des: homeController.categoryList.value.categories!
                                       [index].strCategoryDescription.toString(),
                                       ),

                                       );

                                     },
                                     child: Container(
                                       width: width * 0.29,
                                       // height: 25,
                                       margin: EdgeInsets.all(5),
                                       decoration: BoxDecoration(
                                           color: Colors.white.withOpacity(0.32),
                                           borderRadius: BorderRadius.circular(12),
                                         image: DecorationImage(
                                             image: NetworkImage(
                                                 homeController.categoryList.value.categories
                                                 ![index].strCategoryThumb.toString()),
                                           fit: BoxFit.fitHeight,
                                           //scale: double.minPositive
                                         )
                                       ),
                                      child: Container(
                                        width: 3,
                                      // height: 5,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 29),
                                            child: Text( homeController.categoryList.value.categories
                                            ![index].strCategory.toString(),
                                              style: TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                backgroundColor: Colors.blueGrey,
                                              ),

                                            ),
                                          ),
                                        ),
                                      ),
                                     ),
                                   );
                                 }
                             ),
                           ),
                         );
                   }
                      }),
        
                   Obx(() {
                     switch (homeController.rxRequestStatus.value) {
                       case Status.LOADING:
                         return Center(child: CircularProgressIndicator());
        
                       case Status.ERROR:
                         if (homeController.error.value == 'No internet') {
                           return InternetExceptionWidget(onPress: () {
                             homeController.refreshApi();
                           });
                           homeController.categorylistApi();
                         } else {
                           return generalExceptionWidget(onPress: () {
                             homeController.refreshApi();
                           },);
                         }
                       case Status.COMPLETED:
                         return Stack(
                           children: [
                             SizedBox(
                               height: height * 0.32,
                               child: ListView.builder(
                                   itemCount: homeControllerr.mealsList.value.meals!.length,
                                   shrinkWrap: true,
                                   scrollDirection: Axis.horizontal,
                                   itemBuilder: (context, index) {
                                     return Padding(
                                       padding: const EdgeInsets.only(
                                           top: 15, left: 10),
                                       child: GestureDetector(
                                         onTap: (){
                                           Get.toNamed(RoutesName.mealView,
                                             arguments: MealView(
                                                 imgurl: homeControllerr.mealsList.value.meals!
                                               [index].strMealThumb.toString(),
                                                 des: homeControllerr.mealsList.value.meals!
                                                 [index].strIngredient1.toString(),
                                                 title:  homeControllerr.mealsList.value.meals!
                                                 [index].strMeal.toString(),
                                               strIngredient1: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient2.toString(),
                                               strIngredient2: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient3.toString(),
                                               strIngredient3: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient4.toString(),
                                               strIngredient4: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient5.toString(),
                                               strIngredient5: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient6.toString(),
                                               strIngredient6: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient7.toString(),
                                               strIngredient7: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient8.toString(),
                                               strIngredient8: homeControllerr.mealsList.value.meals!
                                               [index].strIngredient9.toString(),

                                             ),
                                           );
                                         },
                                         child: Container(
                                           // height: 50,
                                           width: width * 0.45,
                                           margin: EdgeInsets.all(5),
                                           decoration: BoxDecoration(
                                               color: Colors.blueGrey,
                                               borderRadius: BorderRadius.circular(12),
                                               border: Border.all(color: Colors.white),
                                               image: DecorationImage(
                                                 image: NetworkImage(
                                                     homeControllerr.mealsList.value
                                                         .meals
                                                     ![index].strMealThumb
                                                         .toString()),
                                                 fit: BoxFit.fitHeight,
                                               ),
                                           ),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(left: 140,top: 10),
                                                 child: GestureDetector(
                                                   onTap: (){
                                                     String imageUrl = homeControllerr.mealsList.value.meals![index].strMealThumb.toString();

                                                     if(controller.favouriteList.contains(imageUrl)){
                                                      // controller.meals.value![index].toString();
                                                       controller.RemoveFromFavourite(imageUrl);
                                                      // controller.RemoveFromFavourite(value);
                                                     } else {
                                                       controller.addToFavourite(imageUrl);
                                                     };
                                                   },
                                                   child: Obx(() {
                                                     String imageUrl = homeControllerr.mealsList.value.meals![index].strMealThumb.toString();
                                                     return Icon(

                                                       controller.favouriteList.contains(imageUrl) ? // Check using imageUrl
                                                       Icons.favorite :
                                                       Icons.favorite_border_outlined,
                                                       color: controller.favouriteList.contains(imageUrl) ? Colors.red : Colors.white, // Change color based on favorite status
                                                     );
                                                   })
                                                 ),
                                               ),
                                             ],
                                           )
                                         ),
                                       ),
                                     );
                                   }
                               ),
                             ),
                           ],
                         );
                     }
                   }),
              ],
            ),
          ],
        ),
      )
    );
  }
}

