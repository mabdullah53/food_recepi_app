


//<T> ye generic data pass kiya hai
//dynamic data pass
import 'package:foodrecipe/data/response/status.dart';

class ApiResponse<T> {
  //? ye null safety hai iska matlam hum isko
  //baad m alue assign kry gy
  Status? status;
  T? data;
  String? message;

  //constructor creating

  ApiResponse(this.status, this.data, this.message);
//capital sy start hony wala Status enum class sy a araha hai
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;

//override method use

  @override
  String toString(){
    return "Status : $status \n Message : $message \n Data : $data ";
  }
}