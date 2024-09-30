import 'package:flutter/material.dart';
import 'package:foodrecipe/res/routes/routes_name.dart';
import 'package:get/get.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key,
    required this.imgurl,
    required this.des,
    required this.title,
     //


  });

  final String imgurl;
  final String des;
  final String title;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
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

            Container(
              height: height*0.07,
              width: width*0.4,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),

              ),
              child: Center(
                child: Text(widget.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
           SizedBox(height: height*0.03,),

           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(
            
                   'Description :-',style: TextStyle(

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
            )


          ],
        ),
      ),
    );
  }
}
