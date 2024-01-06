import 'dart:convert';

import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/user.dart';
import 'package:http/http.dart' as http;
class Signinservice{
  var message;
  var token;
  var url = Uri.parse(Serverconfig.domainnameserver+Serverconfig.signin);
  Future <bool> signin(User user) async{
    var response = await http.post(
      url,
      headers:{
        'Accept':'application/json'
      },
      body: {
        'email':user.email,
        'password':user.password,
        'name':user.name,
        'gender':user.gender
      },
    );
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){
      token=jsonresponse['user']['api_token'];

      User_information.User_token=token;
      message=jsonresponse['msg'];

      return true;
    }
    // else if(response.statusCode==401){
    //  // var jsonresponse=jsonDecode(response.body);
    //   message=jsonresponse['error->name[0]'];
    //   return false;
    // }
    else if(jsonresponse['status']==false){
     message=jsonresponse['msg'];
      return false;
    }
    else{
      message="Server error";
      return false;
    }
  }
}