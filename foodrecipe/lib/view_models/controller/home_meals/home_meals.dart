

import 'package:foodrecipe/data/response/status.dart';
import 'package:foodrecipe/models/meals_list/meals_list_model.dart';
import 'package:foodrecipe/repository/home_repository/home_repository.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeControllermeals extends GetxController {

  //inctance create
  final _api = HomeRepository();
  //rx islia hai k q k ye getx hai
  final rxRequestStatus = Status.LOADING.obs;
  final mealsList = MealsListModel().obs;

  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(MealsListModel _value) => mealsList.value = _value;

  void setError(String _value) => error.value = _value;


  void mealsListApi() {
    // setRxRequestStatus(Status.LOADING);
    _api.mealsListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      //ye knsa error a raha hai isloa
      setError(error.toString());
      //error pata krny ka tariqa
      print(error);
      print(stackTrace);
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.LOADING);
    _api.mealsListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      //ye knsa error a raha hai isloa
      setError(error.toString());
      //error pata krny ka tariqa
      print(error);
      print(stackTrace);
      setRxRequestStatus(Status.ERROR);
    });
  }
}