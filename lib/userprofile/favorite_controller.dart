import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/display_favorite_pieces.dart';
import 'package:untitled4/userprofile/favorite_service.dart';
class Favorite_controller extends GetxController{
  var inside=false.obs;
  List<Displayfavoritepieces> favolist=[];
  void changeinside(){
    inside(!inside.value);
  }
  Favorite_service service=new Favorite_service();
  void onReady()async {
    favolist=await service.showfavoritepieces(User_information.User_token);
    changeinside();
    super.onReady();
  }
}