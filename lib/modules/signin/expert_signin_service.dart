import 'dart:convert';

import 'package:untitled4/config/server_config.dart';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/expert.dart';
class Expert_signin_service{
  var message;
  var experttoken;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.expertsignin);
  Future <bool> signin(Expert user) async{
    var response = await http.post(
      url,
      headers:{
        'Accept':'application/json'
      },
      body: {
        'email':user.email,
        'password':user.password,
        'name':user.name,
        'gender':user.gender,
        'date_of_birth':user.birthdate
      },
    );
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){
      experttoken=jsonresponse['expert']['api_token'];
      User_information.Expert_token=experttoken;
      message=jsonresponse['msg'];

      return true;
    }else if(jsonresponse['status']==false){
     // var jsonresponse=jsonDecode(response.body);
      message=jsonresponse['msg'];
      return false;
    }else{
      message="Server error";
      return false;
    }
  }
}