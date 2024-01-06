import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/admininfo.dart';
class Admin_profile_service{
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.getadmininfo);
  Future <List> showadmininfo(String user_token)async{
    var response = await http.get(
      url,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    var jsonresponse=jsonDecode(response.body);
    if(response.statusCode==200){
      print("tesssst infoooo");
      print(jsonresponse);
      return jsonresponse;

    }else{
      return[];
    }
  }
}