


import 'package:foodrecipe/data/response/status.dart';
import 'package:foodrecipe/models/home_category/category_list_model.dart';
import 'package:foodrecipe/repository/home_repository/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  //inctance create
  final _api = HomeRepository();
  //rx islia hai k q k ye getx hai
  final rxRequestStatus = Status.LOADING.obs;
  final categoryList = CategoryListModel().obs;
  RxString error = ''.obs;


  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(CategoryListModel _value) => categoryList.value = _value;

  void setError(String _value) => error.value = _value;


  void categorylistApi() {
    // setRxRequestStatus(Status.LOADING);
    _api.categoryListApi().then((value) {
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
    _api.categoryListApi().then((value) {
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