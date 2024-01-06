import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/allpieces.dart';
import 'package:untitled4/modules/home/allpieces_service.dart';
class Allpieces_controller extends GetxController{
  var inside=false.obs;
List<Allpieces>allpieceslist=[];
  void changeinside(){
    inside(!inside.value);
  }
  Allpieces_service service =new Allpieces_service();
  void onReady() async{
    allpieceslist= await service.getallpieces(User_information.User_token);
    changeinside();
    super.onReady();
  }
}