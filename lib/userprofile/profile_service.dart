import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
class User_profile_service{
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.display_user_profile);
  Future <dynamic> showauserprofile(String user_token)async{
    var response = await http.post(
      url,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    var jsonresponse=jsonDecode(response.body);
    if(response.statusCode==200){
     print(jsonresponse);
      print(jsonresponse);
      return jsonresponse;

    }else{
      return[];
    }
  }
}