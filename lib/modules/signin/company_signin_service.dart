import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/company.dart';
import 'package:untitled4/models/user.dart';
class Company_signin_service{
  var message;
  var companytoken;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.companysignin);
  Future <bool> signin(Company user) async{
    var response = await http.post(
      url,
      headers:{
        'Accept':'application/json'
      },
      body: {
        'email':user.email,
        'password':user.password,
        'name':user.name,
        'date_of_establishment':user.date_of_establishment,
        'location':user.location,
        'major_category' :user.major_category,
      },
    );
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){

      message=jsonresponse['msg'];
      companytoken=jsonresponse['company']['api_token'];
      User_information.Company_token=companytoken;
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