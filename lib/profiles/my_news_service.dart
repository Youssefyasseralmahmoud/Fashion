import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/show_my_news.dart';
class My_news_service{
  var message;
  var newsid;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.show_my_news);

 // Uri.parse(Serverconfig.domainnameserver + Serverconfig.deletenews+User_information.News_id);
  Future <List<ShowMyNews>> showmynews(String user_token)async{
    var response = await http.post(
      url,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var mynews=showMyNewsFromJson(response.body);


      return mynews;

    }else{
      return[];
    }
  }
  Future <bool> deletenews(String user_token,int id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.deletenews+id.toString()),
      headers: {
        'auth_token':'${User_information.Admin_token}',

      },

    );
    // print(response.statusCode);
    // print(response.body);
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){
      message=jsonresponse['message'];
      return true;

    }else if(jsonresponse['status']==false){
      message=jsonresponse['message'];
      return false;
    }else{
      message='server error';
      return false;
    }
  }
}