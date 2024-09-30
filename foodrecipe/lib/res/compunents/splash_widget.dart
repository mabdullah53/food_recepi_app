
import 'package:flutter/material.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash_widget extends StatefulWidget {


  const Splash_widget({super.key,

    required this.imgurl,
  });


  final String imgurl;

  @override
  State<Splash_widget> createState() => _Splash_widgetState();
}

class _Splash_widgetState extends State<Splash_widget> {
   final controller = PageController();
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45,left: 10,right: 10),
            child: Container(
              height: height*0.89,
              width: width*0.99,
              decoration: BoxDecoration(
                  color: AppColor.blackColor,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    opacity: 0.7,
                    image: NetworkImage(widget.imgurl),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  )
              ),
              child:const Column(
                children: [
                  SizedBox(height: 15,),

                  Text('Food Recepi',style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),

                  SizedBox(height: 350,),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Share your \nRecipes',style: TextStyle(
                            color: AppColor.whiteColor,
                            fontSize: 55,
                            fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Simple recipes made for real, actual, everyday life.\nQuick and Easy · Dinner · Vegetarian · Healthy ·\n Instant Pot · Vegan · Meal Prep · Soups · Salads',
                          style: TextStyle(
                            color: AppColor.whiteColor,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
