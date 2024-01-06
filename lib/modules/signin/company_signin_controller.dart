import 'package:get/get.dart';
import 'package:untitled4/models/company.dart';
import 'package:untitled4/modules/signin/company_signin_service.dart';
class Company_signin_controller extends GetxController{
  var email= '';
  var password

  = ' ';
  var name='';
  var date_of_establishment='2020-02-02';
  var signinstatus =false;
  var message;
  var location='';
  var major_category='';
  Company_signin_service service= new Company_signin_service();
  Future <void> onclicksignin() async{
    Company user = Company(email:email,password: password,name: name,date_of_establishment:date_of_establishment,location:location,major_category: major_category);
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