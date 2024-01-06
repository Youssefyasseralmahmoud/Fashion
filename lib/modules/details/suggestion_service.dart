import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/suggestions.dart';
import 'package:untitled4/models/suggestions2.dart';
import 'package:untitled4/models/suggestions3.dart';
class Suggestion_service{
  Future <List<Suggestions>> getsuggestion(String user_token,int id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.getrecommend+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var suggestions=suggestionsFromJson(response.body);
      print("teeeeest for apparel suggestions");
      print(suggestions);
      return suggestions;

    }else{
      return[];
    }
  }
  Future <List<Suggestions2>> getsuggestion2(String user_token,int id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.getrecommend2+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var suggestions=suggestions2FromJson(response.body);
      return suggestions;

    }else{
      return[];
    }
  }
  Future <List<Suggestions3>> getsuggestion3(String user_token, int id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.getrecommend3+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var suggestions=suggestions3FromJson(response.body);
      return suggestions;

    }else{
      return[];
    }
  }
}