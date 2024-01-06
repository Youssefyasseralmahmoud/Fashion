import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/models/user.dart';
import 'package:untitled4/modules/login/loginservice.dart';
class Logincontroller extends GetxController{
  var checkboxstatus =false.obs;
  var email= '';
  var password= ' ';
  var loginstatus =false;
  var message;
  Loginservice service =new Loginservice();

  void changecheckbox(){
    checkboxstatus(!checkboxstatus.value);

  }
  Future <void> onclicklogin() async{
    User user = User(email:email,password: password);
     loginstatus = await service.login(user);
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
