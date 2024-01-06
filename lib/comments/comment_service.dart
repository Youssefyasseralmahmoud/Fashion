import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/comment.dart';
class Comment_service{
  var message;
  Future <bool> addusercomment(Comment comment,id) async{
    var response = await http.post(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.addcomment+id.toString()),
      headers:{
        'auth_token':'${User_information.User_token}',
      },
      body: {
        'details':comment.comment,

      },
    );
    // jsonresponse['status']==true
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){

      message=jsonresponse['msg'];
     // token=jsonresponse['user']['api_token'];

     // User_information.User_token=token;

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