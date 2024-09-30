
import 'package:foodrecipe/models/home_category/category_list_model.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<dynamic> meals = <String>[].obs;

  //humny string ko remove kr diya islia k getx m isko dynamic value chihey
  RxList favouriteList = [].obs;



  addToFavourite(String imageUrl){
    favouriteList.add(imageUrl);
  }
  RemoveFromFavourite(String imageUrl, ) {
    favouriteList.remove(imageUrl);
  }
  }

//   addToFavouritee(int value){
//     favouriteListt.add(value);
//   }
//   RemoveFromFavouritee(int value){
//     favouriteListt.remove(value);
//   }
// }