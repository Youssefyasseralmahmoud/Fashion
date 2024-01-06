import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/user.dart';
class Loginservice{
var message;
var token;

  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.login);

  Future <bool> login(User user) async{
    var response = await http.post(
      url,
      headers:{
        'Accept':'application/json'
      },
      body: {
      'email':user.email,
        'password':user.password,
      },
    );
     var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){

      message=jsonresponse['msg'];
      token=jsonresponse['user']['api_token'];

      User_information.User_token=token;

      print("test for token");
      print(User_information.User_token);

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