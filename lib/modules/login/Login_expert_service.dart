import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/user.dart';
class Login_expert_service{
  var message;
  var experttoken;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.expertlogin);
  Future <bool> login(User user) async{
    var response = await http.post(
      url,
      headers:{
        //'Accept':'application/json'
      },
      body: {
        'email':user.email,
        'password':user.password,
      },
    );
    // jsonresponse['status']==true
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){

      message=jsonresponse['msg'];
      experttoken=jsonresponse['expert']['api_token'];
      User_information.Expert_token=experttoken;
//toke=jsonresponse['token']
      return true;

    }else if(jsonresponse['status']==false){

      message=jsonresponse['msg'];
      return false;
    }else{
      message="Server error";
      return false;
    }
  }
}