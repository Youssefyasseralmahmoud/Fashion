import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/display_favorite_pieces.dart';
import 'package:untitled4/models/display_followed_comapny.dart';
class Following_service{
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.display_followed_cmpany);
  Future <List<Displayfollowedcompany>> showfollowedcompany(String user_token)async{
    var response = await http.get(
      url,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    // var jsonresponse=jsonDecode(response.body);
    if(response.statusCode==200){
      var followed=displayfollowedcompanyFromJson(response.body);
      return followed;

    }else{
      return[];
    }
  }
}