import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/allpieces.dart';
class Allpieces_service{
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.displayallpieces);
  Future <List<Allpieces>> getallpieces(String user_token)async{

    var response = await http.get(
      url,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var allpices=allpiecesFromJson(response.body);
      return allpices;

    }else{
      return[];
    }
  }
}