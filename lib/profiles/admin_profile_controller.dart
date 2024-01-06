import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/admininfo.dart';
import 'package:untitled4/profiles/admin_profile_service.dart';
class Admin_profile_controller extends GetxController{
  List infoprofile=[];
  var inside=false.obs;
  void changeinside(){
    inside(!inside.value);
  }
  Admin_profile_service service =new Admin_profile_service();
  @override
  void onReady()async {
infoprofile=await service.showadmininfo(User_information.Admin_token);
changeinside();
    super.onReady();
  }
}