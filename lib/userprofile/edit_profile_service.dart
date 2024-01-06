import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/update_userprofile.dart';
class Editprofile_service{
  var message;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.update_user_profile);

  Future <bool> onclick(Update_profile update) async{
    print(update.name.runtimeType);
    print(update.email.runtimeType);
    print(update.gender.runtimeType);
    print(update.details.runtimeType);
    print(update.weight.runtimeType);
    print(update.length.runtimeType);
    print(update.prefercolor.runtimeType);
    print(update.preferedstyle.runtimeType);
    print(update.password.runtimeType);
    var response = await http.post(
      url,
      headers:{
        'auth_token':'${User_information.User_token}',
      },
      body: {
        'name':update.name,
        'email':update.email,
       // 'date_of_birth':'',
        'gender':'${update.gender}',
        'details':update.details,
        'weight':'${update.weight}',
        'length':'${update.length}',
        'prefered_color':update.prefercolor,
        'prefered_style':update.preferedstyle,
        'password':update.password,
      },
    );
    // jsonresponse['status']==true
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){

      message=jsonresponse['message'];
//toke=jsonresponse['token']
      return true;

    }else if(jsonresponse['status']==false){

      message=jsonresponse['message'];
      return false;
    }else{
      message="Server error";
      return false;
    }
  }
}