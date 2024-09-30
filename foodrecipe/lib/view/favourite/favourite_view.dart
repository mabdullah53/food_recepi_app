
import 'package:flutter/material.dart';
import 'package:foodrecipe/res/assets/images.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:foodrecipe/view_models/controller/favourite/favourite_item.dart';
import 'package:foodrecipe/view_models/controller/home_meals/home_meals.dart';
import 'package:get/get.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {

  FavouriteController controller =Get.put(FavouriteController());

  final homeControllerr = Get.put(HomeControllermeals());


  RxList favouriteList = [].obs;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeControllerr.mealsListApi();
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return  Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Column(
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
            padding: const EdgeInsets.only(left: 22,right: 25,top: 20),
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
                child: Text('Favourite Item',style: TextStyle(
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

       SizedBox(
         height: height * 0.32,
         child: Obx (() {
           return ListView.builder(
               itemCount: controller.favouriteList.length,
               shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context,index){
                 return Padding(
                   padding: EdgeInsets.only(top: 15,left: 10),

                   child: Container(
                     // height: 50,
                     width: width * 0.45,
                     margin: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Colors.orange,
                       borderRadius: BorderRadius.circular(12),
                       border: Border.all(color: Colors.white),
                       image: DecorationImage(
                         image: NetworkImage(controller.favouriteList.value[index].toString()),
                         fit: BoxFit.fitHeight,
                       ),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 15,left: 140),
                           child: GestureDetector(
                             onTap: (){
                               String imageUrl = homeControllerr.mealsList.value.meals![index].strMealThumb.toString();
                               if(controller.favouriteList.contains(imageUrl)){
                                 // controller.meals.value![index].toString();
                                 controller.RemoveFromFavourite(imageUrl);
                               } else {
                                // controller.addToFavourite(imageUrl);
                               };

                             },
                             child: Obx ((){
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
                     ),
                   ),
                 );
               }
           );
         }),
       ),
        ],
      ),
    );
  }
}
