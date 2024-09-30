
//imolements ka matlab ap aik class ko kisi interface ya abstact
//class ka imple mention dena chahty hn
//app exception ko exception interface k sary rule follow krny
//pary gy
class AppExceptions implements Exception {

  final _messaage; //private variable
  final _prefix; //private variable

//creating a class constructor

  AppExceptions([this._messaage , this._prefix]);

  String toString(){
    return '$_prefix$_messaage';
  }
}

//extends ka matlab ap aik class ko extends kr k,ap oski value
//ko ap apni new class k andr ly sakhty han
class InternetException extends AppExceptions {

  //Super keyword ap parent k andr function ko call krwany k liye use hota
  //hai
  InternetException([String? message]) : super(message, 'No internet');
}





//extends ka matlab ap aik class ko extends kr k,ap oski value
//ko ap apni new class k andr ly sakhty han
class RequestTimeOut extends AppExceptions {

  //Super keyword ap parent k andr function ko call krwany k liye use hota
  //hai
  RequestTimeOut([String? message]) : super(message, 'Rquest Time out');
}




//extends ka matlab ap aik class ko extends kr k,ap oski value
//ko ap apni new class k andr ly sakhty han
class ServerException extends AppExceptions {

  //Super keyword ap parent k andr function ko call krwany k liye use hota
  //hai
  ServerException([String? message]) : super(message, 'Internal server error');
}



class InvalidUrlException extends AppExceptions {


  InvalidUrlException([String? message]) : super(message, 'Invalid url');
}


class FetchDataException extends AppExceptions {


  FetchDataException([String? message]) : super(message, 'Error While Communication');
}
