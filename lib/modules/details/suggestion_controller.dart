import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/suggestions.dart';
import 'package:untitled4/models/suggestions2.dart';
import 'package:untitled4/models/suggestions3.dart';
import 'package:untitled4/modules/details/suggestion_service.dart';
import 'package:untitled4/modules/home/searchpage.dart';
class Suggestion_controller extends GetxController{
  var inside=false.obs;
  var inside2=false.obs;
  var inside3=false.obs;
  List<Suggestions> suggestionlist=[];
  List<Suggestions2> suggestionlist2=[];
  List<Suggestions3> suggestionlist3=[];
  void changeinside(){
    inside(!inside.value);

  }
  void changeinside2(){
    inside2(!inside2.value);
  }
  void changeinside3(){
    inside3(!inside3.value);
  }
  Suggestion_service service=new Suggestion_service();
  Future<void>showsuggestion(id)async{
    suggestionlist=await service.getsuggestion(User_information.User_token,id);
    changeinside();
  }
  Future<void>showsuggestion2(id)async{
    suggestionlist2=await service.getsuggestion2(User_information.User_token,id);
    changeinside2();
  }
  Future<void>showsuggestion3(id)async{
    suggestionlist3=await service.getsuggestion3(User_information.User_token,id);
    changeinside3();
  }
}