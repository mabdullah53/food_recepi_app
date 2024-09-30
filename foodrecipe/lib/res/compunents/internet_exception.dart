import 'package:flutter/material.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:get/get.dart';

class InternetExceptionWidget extends StatefulWidget {

  //ye click ka function hai

  final VoidCallback onPress ;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15,),
          Icon(Icons.cloud_off, color: AppColor.redColor,size: 58,),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Text('internet_exception'.tr,textAlign: TextAlign.center,),),
          ),
          SizedBox(height: height * .15,),

          GestureDetector(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(50),

              ),
              child: Center(child: Text('Retry',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColor.whiteColor),)),
            ),
          )
        ],
      ),
    );
  }
}
