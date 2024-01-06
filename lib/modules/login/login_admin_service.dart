import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/user.dart';
import 'package:untitled4/config/server_config.dart';
class Login_admin_service{
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.adminlogin);
  var message;
  var admintoken;
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
      admintoken=jsonresponse['admin']['api_token'];
      User_information.Admin_token=admintoken;
      print("test for token");
      print(User_information.Admin_token);
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
