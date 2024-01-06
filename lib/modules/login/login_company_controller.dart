import 'package:get/get.dart';
import 'package:untitled4/models/user.dart';
import 'package:untitled4/modules/login/login_company_service.dart';
class Login_company_controller extends GetxController{
  var checkboxstatus =false.obs;
  var email= '';
  var password= ' ';
  var loginstatus =false;
  var message;
  Login_company_service service =new Login_company_service();
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