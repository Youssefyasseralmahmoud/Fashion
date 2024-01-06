import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/detailspieces.dart';
import 'package:untitled4/models/youmaylike.dart';
import 'package:untitled4/modules/details/details_service.dart';
import 'package:untitled4/modules/home/main_home_controller.dart';
class Details_controller extends GetxController{
  var inside2=false.obs;
var inside3=false.obs;
  var inside4=false.obs;
  List<Detailspieces> detailspieces=[];
  List<Maylike> maylikelist=[];
Details_service service=new Details_service();

  void changeinside2(){
    inside2(!inside2.value);
  }
  void changeinside3(){
    inside3(!inside3.value);
  }
  void changeinside4(){
    inside4(!inside4.value);
  }

Future<void>showdetails(id)async{
  detailspieces=await service.getdetailspieces(User_information.User_token,id);
  changeinside2();
  maylikelist=await service.getmaylikepieces(User_information.User_token, id);


}

   // @override
   // Future<void> onReady()async {
   //
   //
   //
   //
   //  super.onReady();
   // }
}