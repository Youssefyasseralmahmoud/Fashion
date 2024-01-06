import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/detailscollections.dart';
import 'package:untitled4/modules/details/details_service.dart';
import 'package:untitled4/modules/details/detailscollections_service.dart';
class Detailscollections_controller extends GetxController{
  var inside5=false.obs;
  List<Detailscollections> detailscollectionslist=[];
  void changeinside5(){
    inside5(!inside5.value);
  }
  Detailscollections_service service =new Detailscollections_service();
  Future<void>showdetailscollections(id)async{
    detailscollectionslist=await service.getdetailscollections(User_information.User_token,id);
    changeinside5();
  }

}