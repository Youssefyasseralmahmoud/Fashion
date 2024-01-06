

import 'package:get/get.dart';
import 'package:untitled4/models/expert.dart';
import 'package:untitled4/modules/signin/expert_signin_service.dart';

class Expert_signincontroller extends GetxController{
  var email= '';
  var password= ' ';
  var name='';
  var gender='female';
  var birthdate='2020-5-5';
  var signinstatus =false;
  var message;
  List<String> genderoptions = ["Female","Male"];
  var selected='Male'.obs;
  Expert_signin_service service= new Expert_signin_service();
  Future <void> onclicksignin() async{
    if(selected=='Male'){gender='1';}
    else if(selected=='Female'){gender='0'; }
    Expert expert = Expert(email:email,password: password,name: name,gender: gender,birthdate: birthdate);
    signinstatus = await service.signin(expert);
    message=service.message;
    if(message is List){
      String temp='';
      for(String s in message){
        temp+=s +'\n';
        message=temp;
      }
    }
  }
}