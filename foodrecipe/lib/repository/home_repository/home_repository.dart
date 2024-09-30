


import 'package:foodrecipe/data/network/network_api_services.dart';
import 'package:foodrecipe/models/home_category/category_list_model.dart';
import 'package:foodrecipe/models/meals_list/meals_list_model.dart';
import 'package:foodrecipe/res/app_url/app_url.dart';

class HomeRepository {

  final _apiServices = NetworkApiServices();

  //agr hum data model sy ly rahy han tu phir hum dynmic nai bulk datamodel class
  //ka name likhy gy

  Future<CategoryListModel> categoryListApi() async {

    dynamic response = await _apiServices.getApi(AppUrl.categoryApi);
    return CategoryListModel.fromJson(response);
  }


  Future<MealsListModel> mealsListApi() async {

    dynamic response = await _apiServices.getApi(AppUrl.mealsApi);
    return MealsListModel.fromJson(response);
  }

}