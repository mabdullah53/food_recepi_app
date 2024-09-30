
import 'package:flutter/material.dart';
import 'package:foodrecipe/res/assets/images.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:foodrecipe/res/compunents/splash_widget.dart';
import 'package:foodrecipe/view/home/home_view.dart';
import 'package:foodrecipe/view_models/controller/splash/splash_model.dart';
import 'package:foodrecipe/view_models/services/splash_services.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final SplashController controller = Get.put(SplashController());

 // final controller = PageController();
  bool isLastPage = false;
 // var currentPage = 0.obs;

  // @override
  // void dispose(){
  //   controller.dispose();
  //   super.dispose();
  // }
  SplashServices splashScreen =  SplashServices();

  @override
  void initState(){
    super.initState();
    splashScreen.isLogin();
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
             controller.currentPage.value = index;
            },
            children:  [
               Splash_widget (
                   imgurl: (ImageAssets.splashScreen)
               ),

               Splash_widget(
                   imgurl: (ImageAssets.splashScreen1)
               ),

                Splash_widget(imgurl: (ImageAssets.splashScreen2)
                ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //SizedBox()
              Padding(
                padding: const EdgeInsets.only(right: 30,top: 760),
                child: GestureDetector(
                  onTap: (){
                    controller.nextPage();
                  },
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 745,left: 0),
            child: Container(
             // clipBehavior: Clip.,
              height:height*0.10,
              width: width* 0.80,
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.only(
                    topRight:Radius.circular(65,),
                    bottomRight: Radius.circular(75),
                   // topLeft: Radius.circular(44)
                    ),
              ),
              
              child: Center(
                child: SmoothPageIndicator(
                    controller: controller.pageController,
                    count: 3,
                    effect: WormEffect(
                    spacing: 16,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.teal.shade700,
                  ),
                  onDotClicked: (index) => controller.pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn
                  ),
                ) ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
