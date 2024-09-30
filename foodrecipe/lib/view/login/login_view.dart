import 'package:flutter/material.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:foodrecipe/res/compunents/round_button_widget.dart';
import 'package:foodrecipe/utils/utils.dart';
import 'package:foodrecipe/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColor.blackColor,
              image: DecorationImage(
                opacity: 0.7,
                image: NetworkImage('https://images.pexels.com/photos/5644974/pexels-photo-5644974.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.10,),
                    Image(
                        image: AssetImage('assets/icons/—Pngtree—chef vector_7420994.png'),
                         filterQuality: FilterQuality.high,
                         width: 200,
                         height: 200,
                    ),

                    Text('User Login',style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 35,

                      fontWeight: FontWeight.w600

                    ),
                    ),

                    SizedBox(height: height*0.05,),

                    Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50),
                      child: Container(
                        height: 55,
                        child: TextFormField(
                          controller: loginVM.emailController.value,
                          focusNode: loginVM.emailFocusNode.value,

                          validator: (value){
                            //! value null nai honi chihey
                            if(value!.isEmpty){
                              Utils.snakBar('Email', 'Enter email');
                            }
                          },

                          onFieldSubmitted: (value){
                            Utils.fieldFocusChange(context, loginVM.emailFocusNode.value,
                                loginVM.passwordFocusNode.value);
                          },

                          style: TextStyle(color: AppColor.whiteColor,fontSize: 19,),
                          cursorColor: Colors.yellow,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                           // labelText: 'Email',
                            //labelStyle: TextStyle(color: AppColor.whiteColor),
                            hintText: ' E mail',
                            hintStyle: TextStyle(color: AppColor.whiteColor,
                                fontSize: 22 ),
                            prefixIcon: Icon(Icons.person,
                              color: Colors.amber.shade700,
                              size: 30,),
                           // contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 105),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.yellow),
                            ),
                            fillColor: AppColor.whiteColor.withOpacity(0.4),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.yellow)
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height*0.055,),

                    Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50),
                      child: Container(
                        height: 55,
                        child: TextFormField(
                          controller: loginVM.passwordController.value,
                          focusNode: loginVM.passwordFocusNode.value,

                          obscuringCharacter: ('*'),
                          validator: (value){
                            //! value null nai honi chihey
                            if(value!.isEmpty){
                              //ye b text langage m add kry
                              Utils.snakBar('password', 'Enter passwordl');
                            }
                          },
                          onFieldSubmitted: (value){

                          },
                          style: TextStyle(color: AppColor.whiteColor,fontSize: 19,),
                          cursorColor: Colors.yellow,
                         // keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            // labelText: 'Email',
                            //labelStyle: TextStyle(color: AppColor.whiteColor),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: AppColor.whiteColor,
                                fontSize: 22 ),
                            prefixIcon: Icon(Icons.lock_outline,
                              color: Colors.amber.shade700,
                              size: 30,
                            ),
                            // contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 105),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.yellow),
                            ),
                            fillColor: AppColor.whiteColor.withOpacity(0.4),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.yellow)
                            ),
                          ),
                        ),
                      ),
                    ),
                   SizedBox(height: height*0.045,),

                   Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 90),
                       child: Text('New User?',style: TextStyle(
                         color: AppColor.whiteColor,
                         fontSize: 22,
                       ),),
                     ),
                     SizedBox(width: width*0.06,),

                     Text('Sign Up',style: TextStyle(
                       color: Colors.amber.shade700,
                       fontSize: 22,
                       fontWeight: FontWeight.w600,
                       decoration: TextDecoration.underline,
                       decorationColor: AppColor.whiteColor,
                       decorationThickness: 1.1,
                      // height: 2.5
                     ),),
                   ],),

                    SizedBox(height: height*0.045,),

                    Obx(() => RoundButtonWidget(
                      height: height*0.07,
                      width: width*0.33,
                       // title: 'Login'.tr,
                        loading: loginVM.loading.value,
                        onPress: (){
                          if(_formkey.currentState!.validate()){
                            loginVM.loginApi();
                          }
                        }
                    ))

                    // Container(
                    //   height: height*0.07,
                    //   width: width*0.33,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50),
                    //     color: Colors.amber.shade700,
                    //     border: Border.all(color: Colors.white,
                    //         width: 1.0
                    //     ),
                    //   ),
                    //   child: Center(child: Text('SIGN IN',
                    //     style: TextStyle(
                    //       color: AppColor.whiteColor
                    //
                    //     ),)),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
