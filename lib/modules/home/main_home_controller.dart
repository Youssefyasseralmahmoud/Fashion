
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/collections.dart';
import 'package:untitled4/models/news.dart';
import 'package:untitled4/models/pices.dart';
import 'package:untitled4/modules/home/main_home_service.dart';

class Main_home_controller extends GetxController{
  var inside=false.obs;
  var inside2=false.obs;
  var inside3=false.obs;
  var inside4=false.obs;
  List<Pices> pieceslist=[];
  List<Collections> collectionslist=[];
  List<News> newslist=[];
  Main_home_service service= new Main_home_service();
  @override
  void changeinside(){
    inside(!inside.value);
  }
  void changeinside2(){
    inside2(!inside2.value);
  }
  void changeinside3(){
    inside3(!inside3.value);
  }


  void onReady() async{
    newslist= await service.getlastnews(User_information.User_token);
    changeinside3();
    pieceslist=await service.getpieces(User_information.User_token);
    changeinside();
    collectionslist=await service.getcollections(User_information.User_token);
    changeinside2();

    super.onReady();
  }
}