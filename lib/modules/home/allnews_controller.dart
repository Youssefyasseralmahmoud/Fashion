import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/allnews.dart';
import 'package:untitled4/modules/category/categorycontroller.dart';
import 'package:untitled4/modules/home/allnews_service.dart';
class Allnewscontroller extends GetxController{

Allnewsservice service=new Allnewsservice();
List<Allnews2> allnewslist=[];
var inside=false.obs;
void changeinside(){
  inside(!inside.value);

}
void onReady() async{
  allnewslist=await service.getallnews(User_information.User_token);
  changeinside();
  super.onReady();
}

}