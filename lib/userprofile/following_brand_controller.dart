import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/display_favorite_pieces.dart';
import 'package:untitled4/models/display_followed_comapny.dart';
import 'package:untitled4/userprofile/following_brand_service.dart';
class Following_controller extends GetxController{
  var inside=false.obs;
  List<Displayfollowedcompany> followinglist=[];
  void changeinside(){
    inside(!inside.value);
  }
  Following_service service=new Following_service();
  void onReady()async {
    followinglist=await service.showfollowedcompany(User_information.User_token);
    changeinside();
    super.onReady();
  }
}