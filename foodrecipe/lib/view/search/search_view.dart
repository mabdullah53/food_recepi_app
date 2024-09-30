
import 'package:flutter/material.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:foodrecipe/utils/utils.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {



    final height = MediaQuery.of(context).size.height*1;
    final width = MediaQuery.of(context).size.width*1;

    return  Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Text('Search,Recepi',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),),
            ),
          ),

          SizedBox(height: height*0.05,),

          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: Container(
              height: 55,
              child: TextFormField(
                style: TextStyle(color: AppColor.whiteColor,fontSize: 19,),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  // labelText: 'Email',
                  //labelStyle: TextStyle(color: AppColor.whiteColor),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: AppColor.whiteColor.withOpacity(0.6),
                      fontSize: 22 ),
                  prefixIcon: Icon(Icons.search,
                    color: Colors.white,
                    size: 30,),
                  // contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 105),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: AppColor.whiteColor.withOpacity(0.4),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Center(
              child: Text('Search on your\nFavourite Recepe',style: TextStyle(
                color: Colors.white,
                fontSize: 19
              ),),
            ),
          )
        ],
      ),
    );
  }
}
