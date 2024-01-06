import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/detailspieces.dart';
import 'package:untitled4/models/youmaylike.dart';
class Details_service{
  Future <List<Detailspieces>> getdetailspieces(String user_token,int id)async{

    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaydetailspieces+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var detailspices=detailspiecesFromJson(response.body);

      return detailspices;

    }else{
      return[];
    }
  }
  Future <List<Maylike>> getmaylikepieces(String user_token,int id)async{

    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.youmaylike+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var maylikepices=maylikeFromJson(response.body);
      return maylikepices;

    }else{
      return[];
    }
  }
}