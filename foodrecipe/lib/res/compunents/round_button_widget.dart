import 'package:flutter/material.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({
    super.key,
    this.height =60,
    this.width = 60,
    required this.onPress,
    this.loading = false

  });

  final double height , width;
  final VoidCallback onPress;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.amber.shade700,
          border: Border.all(color: Colors.white,
              width: 1.0
          ),
        ),
        child: loading ? Center(child: CircularProgressIndicator()) :
        Center(child: Text('SIGN IN',
          style: TextStyle(
              color: AppColor.whiteColor,

          ),)),
      ),
    );
  }
}
