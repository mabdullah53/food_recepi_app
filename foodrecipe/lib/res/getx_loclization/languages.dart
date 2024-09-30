

import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{

  @override
  //map string ka matlab ,apka map key value pair ka collection ha,jhn keys String type hn

  Map<String , Map<String, String>> get keys => {

    'en_Us' : {
      'email_hint' : 'Email',
      'internet_exception' : "we are unable to show result\nplease check internet\nconnection",
      'general_exception' : "we are unable to process request\n please try again",
      'welcome_back' : 'welcome\nBack',
      'Login': 'Login',
      'login' : 'Email',
      'password_hint' : 'Paaword',

    },

    'ur_pk' : {
      'email_hint' : 'ای میل'
    }

  };
}