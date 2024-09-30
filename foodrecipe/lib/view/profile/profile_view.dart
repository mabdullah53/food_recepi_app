
import 'package:flutter/material.dart';
import 'package:foodrecipe/res/assets/images.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../res/routes/routes_name.dart';
import '../../view_models/controller/user_preference/user_preference.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();

}

class _ProfileViewState extends State<ProfileView> {

  UserPreference userPreference = UserPreference();
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Container(
              height: height*0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blueGrey.shade900,
              ),
              child: Column(
                children: [
                  Row (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 55,left: 15),
                        child: Text('Profile',style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),),
                      )
                    ],
                  ),

                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 18),
                        child: Container(
                          height: height*0.085,
                          width: width*0.18,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(ImageAssets.homeViewProfile),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high,
                              ),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange
                          ),
                        ),
                      ),



                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text('Hello',style: TextStyle(
                            fontSize: 17,
                            color: Colors.white.withOpacity(0.6)
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 0),
                        child: Text('Arnold',style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w900
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
          ),


          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40),
                child: GestureDetector(
                  onTap: (){
                    userPreference.removeUser().then((value){
                      Get.toNamed(RoutesName.loginView);
                    });
                  },
                  child: Container(
                    height: height*0.1,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blueGrey.shade900,
                    ),

                    child: Icon(Icons.power_settings_new,
                      color:Colors.white,
                      size: 34,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,left: 50),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(RoutesName.navigationView);
                  },
                  child: Container(
                    height: height*0.1,
                    width: width*0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey.shade900,
                    ),

                    child: Icon(Icons.home_outlined,
                      color:Colors.white,
                      size: 34,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40),
                child: Container(
                  height: height*0.1,
                  width: width*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blueGrey.shade900,
                  ),

                  child: Icon(Icons.settings,
                    color:Colors.white,
                    size: 34,
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 49,top: 8),
                child: Text('Sign Out',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 79,top: 8),
                child: Text('Home',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 74,top: 8),
                child: Text('Setting',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: height*0.078,
                  width: width*1,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade900
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('My Home',style: TextStyle(
                          color: Colors.white,
                          fontSize: 19
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 274),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 23,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: height*0.078,
                  width: width*1,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade900
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Messages',style: TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 264),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 23,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: height*0.078,
                  width: width*1,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade900
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Change Password',style: TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 198),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 23,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
