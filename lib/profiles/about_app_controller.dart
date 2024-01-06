import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/block_companies.dart';
import 'package:untitled4/models/block_expert.dart';
import 'package:untitled4/models/show_companies.dart';
import 'package:untitled4/models/show_experts.dart';
import 'package:untitled4/profiles/about_app_sevice.dart';
class About_app_controller extends GetxController{
  var block='Block'.obs;
  var count_company;
  var count_expert;
  var count_user;
  var count_block_expert;
  var count_block_company;
  List<Companies> showcompanies=[];
  List<Experts> showexperts=[];
  List<BlockCompanies> blockcompanies=[];
  List<BlockExpert> blockexperts=[];
  var inside=false.obs;
  var inside2=false.obs;
  var inside3=false.obs;
  var inside4=false.obs;
  var inside5=false.obs;
  var inside6=false.obs;
  var inside7=false.obs;
  var inside8=false.obs;
  var inside9=false.obs;
  var blockstatus=false;
  var blockexpertstatus=false;
  var unblockcompanystatus=false;
  var unblockexpertstatus=false;
  var message;
  About_app_service service=new About_app_service();
  @override
  void changeinside(){
    inside(!inside.value);
  }
  void changeinside2(){
    inside2(!inside2.value);
  }
  void changeinside3(){
    inside3(!inside3.value);
  }
  void changeinside4(){
    inside4(!inside4.value);
  }
  void changeinside5(){
    inside5(!inside5.value);
  }
  void changeinside6(){
    inside6(!inside6.value);
  }
  void changeinside7(){
    inside7(!inside7.value);
  }
  void changeinside8(){
    inside8(!inside8.value);
  }
  void changeinside9(){
    inside9(!inside9.value);
  }
   changeblock(){
    if(block=='Block') {
      block.value = 'unblock';
    }else
      block.value='Block';
  }
  Future <void> blockcompany(id) async{
    blockstatus=await service.blockcompany(User_information.Admin_token,id);
    message=service.message;
    if(message is List){
      String temp='';
      for(String s in message){
        temp+=s +'\n';
        message=temp;
      }
    }
  }
  Future <void> blockexpert(id) async{
    blockexpertstatus=await service.blockexpert(User_information.Admin_token,id);
    message=service.message;
    if(message is List){
      String temp='';
      for(String s in message){
        temp+=s +'\n';
        message=temp;
      }
    }
  }
  Future <void> unblockcompany(id) async{
    unblockcompanystatus=await service.unblockcompany(User_information.Admin_token,id);
    message=service.message;
    if(message is List){
      String temp='';
      for(String s in message){
        temp+=s +'\n';
        message=temp;
      }
    }
  }
  Future <void> unblockexpert(id) async{
    unblockexpertstatus=await service.unblockexpert(User_information.Admin_token,id);
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
   count_company=await service.getcountcompany(User_information.Admin_token);
   count_expert=await service.getcountexpert(User_information.Admin_token);
   count_user= await service.getcountuser(User_information.Admin_token);
   count_block_expert= await service.getcountblockexpert(User_information.Admin_token);
   count_block_company= await service.getcountblockcompany(User_information.Admin_token);
   showcompanies= await service.showcompanies(User_information.Admin_token);
   showexperts= await service.showexperts(User_information.Admin_token);
   blockcompanies= await service.showblockcompanies(User_information.Admin_token);
   blockexperts= await service.showblockexpert(User_information.Admin_token);
   changeinside6();
   changeinside7();
   changeinside2();
   changeinside();
   changeinside3();
   changeinside4();
   changeinside5();
    super.onReady();
  }
}