import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipe/data/app_exception.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiServices {

  //q k hum isy override kr rahy han

  @override
  Future<dynamic> getApi(String url) async {

    if(kDebugMode){ //ye islia ha humy pta chly k data a b raha hai
      print(url);
    }

   dynamic responseJson;

    try {
      //sara api ka data is response m aye ga
      final response = await http.get(Uri.parse(url)).timeout( const Duration(seconds: 10));
      responseJson = returnResponse(response); //ye hum response m sy data responsejson variable k andr bej rahy hn
    }on SocketException { //socket exception ka matlab apk paas internet nai hai
      throw InternetException('');   //ye hum app exception wali class ko throw kr rahy han
    }on RequestTimeOut {
      throw RequestTimeOut('');
      //agy ap jitny marzi exception show krwa sakhty hn
    }

    return responseJson;

  }
  //ye method post api k liye hai

  @override
  Future<dynamic> postApi(var data, String url) async {

    if(kDebugMode){ //ye islia ha humy pta chly k data ja b raha hai
      print(url);
      print(data);
    }

    dynamic responseJson;

    try {
      //sara api ka data is response m aye ga
      final response = await http.post(Uri.parse(url),
        //agr raw form m data ho ga tu phir encode ho ga ,ye ap hudh dekhy data
        // kis form m hai ,agr asy hai tu phir simple data likh dy bus
        // body: jsonEncode(data)
        body: data,
      ).timeout( const Duration(seconds: 10));
      responseJson = returnResponse(response); //ye hum response m sy data responsejson variable k andr bej rahy hn
    }on SocketException { //socket exception ka matlab apk paas internet nai hai
      throw InternetException('');   //ye hum app exception wali class ko throw kr rahy han
    }on RequestTimeOut {
      throw RequestTimeOut('');
      if(kDebugMode){
        print(responseJson);
      }


      //agy ap jitny marzi exception show krwa sakhty hn
    }

    return responseJson;

  }

  //ye hum sary status code handle kr rahy hn
  //jo data a raha response k andr hum osk data k status code ko handle kr rahy hn
  //status code weasy 500 tak hoty hn
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body); //ye data decode ho gya
        return responseJson ; //decode ho kr yahn a gya
      case 400:
        dynamic responseJson = jsonDecode(response.body); //ye data decode ho gya
        return responseJson ;

      default:
        throw FetchDataException('Error accured while communication with server '+response.statusCode.toString());
    }

  }


}

