import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/userprofile/profile_service.dart';
class User_profile_controller extends GetxController{
  var inside=false.obs;
  var infoprofile;
  void changeinside(){
    inside(!inside.value);
  }
  User_profile_service service =new User_profile_service();
  void onReady()async {
    infoprofile=await service.showauserprofile(User_information.User_token);
    changeinside();
    super.onReady();
  }
}