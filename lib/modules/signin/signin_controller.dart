import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/models/user.dart';
import 'package:untitled4/modules/signin/signinservice.dart';
class Signincontroller extends GetxController{
  var email='';
  var password='';
  var name='';
  var gender='Male';
  var signinstatus =false;
  var message;
  List<String> genderoptions = ["Female","Male"];
 var selected='Male'.obs;
  Signinservice service =new Signinservice();
  Future <void> onclicksignin() async{
    if(selected=='Male'){gender='1';}
    else if(selected=='Female'){gender='0';}
    User user = User(email:email,password: password,name: name,gender: gender);
    signinstatus = await service.signin(user);
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
