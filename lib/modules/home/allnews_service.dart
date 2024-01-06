import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/allnews.dart';
import 'package:untitled4/models/pices.dart';
import 'package:untitled4/modules/category/categorycontroller.dart';
import 'package:untitled4/modules/home/allnews.dart';

class Allnewsservice{

  var message;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.displayallnews);

  Future <List<Allnews2 >> getallnews(String user_token)async{
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

      var allnews=allnews2FromJson(response.body);

      return allnews;

    }else{
      return[];
    }
  }
}