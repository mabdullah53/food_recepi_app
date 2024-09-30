
import 'package:flutter/material.dart';
import 'package:foodrecipe/res/routes/routes_name.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MealView extends StatefulWidget {
  const MealView({super.key,

  required this.imgurl,
    required this.des,
    required this.title,
  required this.strIngredient1,
  required this.strIngredient2,
  required this.strIngredient3,
  required this.strIngredient4,
  required this.strIngredient5,
  required this.strIngredient6,
  required this.strIngredient7,
  required this.strIngredient8,
  // required this.strIngredient9,
  // required this.strIngredient10,
  // required this.strIngredient11,
  // required this.strIngredient12,
  // required this.strIngredient13,
  // required this.strIngredient14,
  // required this.strIngredient15,
  // required this.strIngredient16,
  // required this.strIngredient17,
  // required this.strIngredient18,
  // required this.strIngredient19,





  });

  final String imgurl;
  final String des;
  final String title;
  final strIngredient1;
  final strIngredient2;
  final strIngredient3;
  final strIngredient4;
  final strIngredient5;
  final strIngredient6;
  final strIngredient7;
   final strIngredient8;
  // final strIngredient9;
  // final strIngredient10;
  // final strIngredient11;
  // final strIngredient12;
  // final strIngredient13;
  // final strIngredient14;
  // final strIngredient15;
  // final strIngredient16;
  // final strIngredient17;
  // final strIngredient18;
  // final strIngredient19;




  @override
  State<MealView> createState() => _MealViewState();
}

class _MealViewState extends State<MealView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height*0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.imgurl),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.orange,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 65),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RoutesName.navigationView);
                      },
                      child: Icon(Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.02,),

            Center(
              child: Text(widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(height: height*0.03,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(

                    'Ingredient :-',style: TextStyle(

                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.des,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient2,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient3,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient4,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient5,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient6,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient7,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      widget.strIngredient8,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),
              ],
            ),

            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient10,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient11,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient12,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient13,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient14,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient15,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient16,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient17,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient18,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient19,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.strIngredient19,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.des,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.justify,
            //           widget.des,style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 22
            //         ),),
            //       ),
            //     ),
            //   ],
            // ),




          ],
        ),
      ),
    );
  }
}
