import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/detailscollections.dart';
class Detailscollections_service{
  Future <List<Detailscollections>> getdetailscollections(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaycollectionsdetails+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var detailscollections=detailscollectionsFromJson(response.body);

      return detailscollections;

    }else{
      return[];
    }
  }
}