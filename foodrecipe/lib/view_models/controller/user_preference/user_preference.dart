
import 'package:foodrecipe/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference   {
  //simple aik function osk andr user model sy data ly kr sirf token shared preference
  //store krwa rahy hn
  Future<bool> saveUser(UserModel responseModel) async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
    sp.setBool('isLogin', responseModel.isLogin!);
    return true;
  }

  Future<UserModel> getUser() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');
    bool? isLogin = sp.getBool('isLogin'); //ye secpund method hai
    return UserModel(
        token: token,
        isLogin: isLogin
    );
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }

}