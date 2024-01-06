import 'package:get/get.dart';
import 'package:untitled4/models/user.dart';
import 'package:untitled4/modules/login/Login_expert_service.dart';
class Login_expert_controller extends GetxController{
  var email= '';
  var password= '';
  var loginstatus =false;
  var message;
  Login_expert_service service= new Login_expert_service();
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