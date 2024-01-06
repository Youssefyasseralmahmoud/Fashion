import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/update_userprofile.dart';
import 'package:untitled4/userprofile/edit_profile_service.dart';
class Editprofile_controller extends GetxController{
  var inside=false.obs;
 var email='';
  var password='';
  var name='';
  var gendeinstring='';
  var gender;
  late DateTime birthdate;
  var  weight=0;
   var length=0;
  var prefercolor='';
  var preferstyle='';
  var details='';
  var editstatus =false;
  var message;

  void changeinside(){
    inside(!inside.value);
  }
  Editprofile_service service=new Editprofile_service();
  Future <void> onclick() async{
   if(gendeinstring=='Male'){gender=1;}
   else if(gendeinstring=='Female'){gender=0;}
   Update_profile update = Update_profile(email:email,password: password,name: name,length: length,prefercolor: prefercolor,weight: weight,gender: gender,details: details,preferedstyle: preferstyle);

   editstatus = await service.onclick(update);

   //print(update.birthdate);
   print(update.email);
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