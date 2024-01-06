import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/show_my_news.dart';
import 'package:untitled4/profiles/my_news_service.dart';
class My_news_controller extends GetxController {
  var inside = false.obs;
  var deletestatus=false;
  var message;
  List<ShowMyNews> mynewslist=[];
  My_news_service service =new My_news_service();
  void changeinside(){
    inside(!inside.value);
  }
  Future <void> deletenews(id) async{
  deletestatus=await service.deletenews(User_information.Admin_token,id);
  message=service.message;
  if(message is List){
    String temp='';
    for(String s in message){
      temp+=s +'\n';
      message=temp;
    }
  }
  }
  void onReady() async{
    mynewslist= await service.showmynews(User_information.Admin_token);

    changeinside();

    super.onReady();
  }

}