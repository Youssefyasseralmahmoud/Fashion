import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/searchbox.dart';
import 'package:untitled4/models/searchkey.dart';
import 'package:untitled4/modules/home/searchpageservice.dart';

class Searchpage_controller extends GetxController{
  var searchkey='';
  List<Piece> searchlist=[];
  List<Company> searchlist2=[];
  List<dynamic> searchlist3=[];
  Searchpage_service service= new Searchpage_service();
  var inside =false.obs;
  var inside2=false.obs;
  var inside3=false.obs;
  void change(){
    inside(!inside.value);

  }
  void change2(){
    inside2(!inside2.value);

  }
  void change3(){
    inside3(!inside3.value);

  }
  @override

  Future <void> onclicksearch() async{
   // change();
   // change2();
    Searchkey key = Searchkey(searchkey: searchkey);
    searchlist=  await service.getsearchresult(User_information.User_token,key);
    searchlist2= await service.getsearchresult2(User_information.User_token, key);
    searchlist3=await service.getsearchresult3(User_information.User_token, key);

  }
}